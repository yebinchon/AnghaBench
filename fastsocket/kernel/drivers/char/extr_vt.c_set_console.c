
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; } ;
struct vc_data {scalar_t__ vc_mode; TYPE_1__ vt_mode; } ;
struct TYPE_4__ {struct vc_data* d; } ;


 int EINVAL ;
 scalar_t__ KD_GRAPHICS ;
 scalar_t__ VT_AUTO ;
 size_t fg_console ;
 int schedule_console_callback () ;
 TYPE_2__* vc_cons ;
 int vc_cons_allocated (int) ;
 scalar_t__ vt_dont_switch ;
 int want_console ;

int set_console(int nr)
{
 struct vc_data *vc = vc_cons[fg_console].d;

 if (!vc_cons_allocated(nr) || vt_dont_switch ||
  (vc->vt_mode.mode == VT_AUTO && vc->vc_mode == KD_GRAPHICS)) {
  return -EINVAL;
 }

 want_console = nr;
 schedule_console_callback();

 return 0;
}
