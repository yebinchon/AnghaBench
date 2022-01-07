
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {int skip; int entries; int max_entries; scalar_t__ nr_entries; } ;
struct block_lock {scalar_t__* holders; struct stack_trace* traces; } ;
typedef int stack_entries ;


 int DMERR (char*) ;
 int EINVAL ;
 unsigned int MAX_HOLDERS ;
 int MAX_STACK ;
 scalar_t__ current ;
 int print_stack_trace (struct stack_trace*,int) ;
 int save_stack_trace (struct stack_trace*) ;

__attribute__((used)) static int __check_holder(struct block_lock *lock)
{
 unsigned i;





 for (i = 0; i < MAX_HOLDERS; i++) {
  if (lock->holders[i] == current) {
   DMERR("recursive lock detected in metadata");
   return -EINVAL;
  }
 }

 return 0;
}
