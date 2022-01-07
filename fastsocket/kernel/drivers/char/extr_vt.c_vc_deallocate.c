
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vt_notifier_param {struct vc_data* vc; } ;
struct vc_data {struct vc_data* vc_screenbuf; TYPE_1__* vc_sw; int vt_pid; } ;
struct TYPE_4__ {struct vc_data* d; } ;
struct TYPE_3__ {int owner; int (* con_deinit ) (struct vc_data*) ;} ;


 unsigned int MIN_NR_CONSOLES ;
 int VT_DEALLOCATE ;
 int WARN_CONSOLE_UNLOCKED () ;
 int atomic_notifier_call_chain (int *,int ,struct vt_notifier_param*) ;
 int kfree (struct vc_data*) ;
 int module_put (int ) ;
 int put_pid (int ) ;
 int stub1 (struct vc_data*) ;
 TYPE_2__* vc_cons ;
 scalar_t__ vc_cons_allocated (unsigned int) ;
 int vcs_remove_sysfs (unsigned int) ;
 int vt_notifier_list ;

void vc_deallocate(unsigned int currcons)
{
 WARN_CONSOLE_UNLOCKED();

 if (vc_cons_allocated(currcons)) {
  struct vc_data *vc = vc_cons[currcons].d;
  struct vt_notifier_param param = { .vc = vc };

  atomic_notifier_call_chain(&vt_notifier_list, VT_DEALLOCATE, &param);
  vcs_remove_sysfs(currcons);
  vc->vc_sw->con_deinit(vc);
  put_pid(vc->vt_pid);
  module_put(vc->vc_sw->owner);
  kfree(vc->vc_screenbuf);
  if (currcons >= MIN_NR_CONSOLES)
   kfree(vc);
  vc_cons[currcons].d = ((void*)0);
 }
}
