
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uml_tls_struct {scalar_t__ flushed; int present; } ;
struct TYPE_3__ {struct uml_tls_struct* tls_array; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct task_struct {TYPE_2__ thread; } ;


 int GDT_ENTRY_TLS_MAX ;
 int GDT_ENTRY_TLS_MIN ;

void clear_flushed_tls(struct task_struct *task)
{
 int i;

 for (i = GDT_ENTRY_TLS_MIN; i < GDT_ENTRY_TLS_MAX; i++) {
  struct uml_tls_struct* curr =
   &task->thread.arch.tls_array[i - GDT_ENTRY_TLS_MIN];





  if (!curr->present)
   continue;

  curr->flushed = 0;
 }
}
