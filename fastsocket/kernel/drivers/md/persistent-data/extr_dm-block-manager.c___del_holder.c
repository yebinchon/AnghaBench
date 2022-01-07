
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct block_lock {int ** holders; } ;


 unsigned int __find_holder (struct block_lock*,struct task_struct*) ;
 int put_task_struct (struct task_struct*) ;

__attribute__((used)) static void __del_holder(struct block_lock *lock, struct task_struct *task)
{
 unsigned h = __find_holder(lock, task);
 lock->holders[h] = ((void*)0);
 put_task_struct(task);
}
