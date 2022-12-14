class Task {
  bool? status;
  String? taskDescription;

  Task({
    required this.status,
    required this.taskDescription,
  });

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      status: json["status"] as bool,
      taskDescription: json["task_description"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "status": status,
      "task_description": taskDescription,
    };
  }

  @override
  String toString() {
    return 'Task{status: $status, task_description: $taskDescription}';
  }
}
