
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct stack_trace {int skip; int entries; int max_entries; scalar_t__ nr_entries; } ;
struct block_lock {int * entries; struct stack_trace* traces; struct task_struct** holders; } ;


 int MAX_STACK ;
 unsigned int __find_holder (struct block_lock*,int *) ;
 int get_task_struct (struct task_struct*) ;
 int save_stack_trace (struct stack_trace*) ;

__attribute__((used)) static void __add_holder(struct block_lock *lock, struct task_struct *task)
{
 unsigned h = __find_holder(lock, ((void*)0));




 get_task_struct(task);
 lock->holders[h] = task;
}
