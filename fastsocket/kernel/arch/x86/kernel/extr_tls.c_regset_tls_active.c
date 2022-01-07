
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regset {int dummy; } ;
struct thread_struct {int * tls_array; } ;
struct task_struct {struct thread_struct thread; } ;


 int GDT_ENTRY_TLS_ENTRIES ;
 scalar_t__ desc_empty (int *) ;

int regset_tls_active(struct task_struct *target,
        const struct user_regset *regset)
{
 struct thread_struct *t = &target->thread;
 int n = GDT_ENTRY_TLS_ENTRIES;
 while (n > 0 && desc_empty(&t->tls_array[n - 1]))
  --n;
 return n;
}
