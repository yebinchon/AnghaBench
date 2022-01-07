
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int entry_number; } ;
struct uml_tls_struct {int flushed; TYPE_3__ tls; int present; } ;
struct TYPE_6__ {struct uml_tls_struct* tls_array; } ;
struct TYPE_7__ {TYPE_1__ arch; } ;
struct task_struct {TYPE_2__ thread; } ;


 int GDT_ENTRY_TLS_MAX ;
 int GDT_ENTRY_TLS_MIN ;
 int LDT_empty (TYPE_3__*) ;
 int O_FORCE ;
 int WARN_ON (int) ;
 int clear_user_desc (TYPE_3__*) ;
 int do_set_thread_area (TYPE_3__*) ;

__attribute__((used)) static int load_TLS(int flags, struct task_struct *to)
{
 int ret = 0;
 int idx;

 for (idx = GDT_ENTRY_TLS_MIN; idx < GDT_ENTRY_TLS_MAX; idx++) {
  struct uml_tls_struct* curr =
   &to->thread.arch.tls_array[idx - GDT_ENTRY_TLS_MIN];





  if (!curr->present) {
   if (!curr->flushed) {
    clear_user_desc(&curr->tls);
    curr->tls.entry_number = idx;
   } else {
    WARN_ON(!LDT_empty(&curr->tls));
    continue;
   }
  }

  if (!(flags & O_FORCE) && curr->flushed)
   continue;

  ret = do_set_thread_area(&curr->tls);
  if (ret)
   goto out;

  curr->flushed = 1;
 }
out:
 return ret;
}
