
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; int relsig; } ;
struct vc_data {size_t vc_num; size_t vt_newvt; scalar_t__ vc_mode; TYPE_1__ vt_mode; int vt_pid; } ;
struct TYPE_4__ {struct vc_data* d; } ;


 scalar_t__ KD_GRAPHICS ;
 scalar_t__ VT_PROCESS ;
 int complete_change_console (struct vc_data*) ;
 size_t fg_console ;
 scalar_t__ kill_pid (int ,int ,int) ;
 int reset_vc (struct vc_data*) ;
 TYPE_2__* vc_cons ;
 scalar_t__ vt_dont_switch ;

void change_console(struct vc_data *new_vc)
{
 struct vc_data *vc;

 if (!new_vc || new_vc->vc_num == fg_console || vt_dont_switch)
  return;
 vc = vc_cons[fg_console].d;
 if (vc->vt_mode.mode == VT_PROCESS) {
  vc->vt_newvt = new_vc->vc_num;
  if (kill_pid(vc->vt_pid, vc->vt_mode.relsig, 1) == 0) {





   return;
  }
  reset_vc(vc);




 }




 if (vc->vc_mode == KD_GRAPHICS)
  return;

 complete_change_console(new_vc);
}
