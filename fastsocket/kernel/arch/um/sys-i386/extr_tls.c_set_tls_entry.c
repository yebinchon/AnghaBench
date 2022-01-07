
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct user_desc {int dummy; } ;
struct TYPE_3__ {TYPE_2__* tls_array; } ;
struct thread_struct {TYPE_1__ arch; } ;
struct task_struct {struct thread_struct thread; } ;
struct TYPE_4__ {int present; int flushed; struct user_desc tls; } ;


 int EINVAL ;
 int GDT_ENTRY_TLS_MAX ;
 int GDT_ENTRY_TLS_MIN ;

__attribute__((used)) static int set_tls_entry(struct task_struct* task, struct user_desc *info,
    int idx, int flushed)
{
 struct thread_struct *t = &task->thread;

 if (idx < GDT_ENTRY_TLS_MIN || idx > GDT_ENTRY_TLS_MAX)
  return -EINVAL;

 t->arch.tls_array[idx - GDT_ENTRY_TLS_MIN].tls = *info;
 t->arch.tls_array[idx - GDT_ENTRY_TLS_MIN].present = 1;
 t->arch.tls_array[idx - GDT_ENTRY_TLS_MIN].flushed = flushed;

 return 0;
}
