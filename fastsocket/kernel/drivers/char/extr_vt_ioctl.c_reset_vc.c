
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ frsig; scalar_t__ acqsig; scalar_t__ relsig; scalar_t__ waitv; int mode; } ;
struct vc_data {size_t vc_num; int vt_newvt; int * vt_pid; TYPE_1__ vt_mode; int vc_mode; } ;
struct TYPE_4__ {int kbdmode; } ;


 int KD_TEXT ;
 int VC_UNICODE ;
 int VC_XLATE ;
 int VT_AUTO ;
 scalar_t__ default_utf8 ;
 int in_interrupt () ;
 TYPE_2__* kbd_table ;
 int put_pid (int *) ;
 int reset_palette (struct vc_data*) ;

void reset_vc(struct vc_data *vc)
{
 vc->vc_mode = KD_TEXT;
 kbd_table[vc->vc_num].kbdmode = default_utf8 ? VC_UNICODE : VC_XLATE;
 vc->vt_mode.mode = VT_AUTO;
 vc->vt_mode.waitv = 0;
 vc->vt_mode.relsig = 0;
 vc->vt_mode.acqsig = 0;
 vc->vt_mode.frsig = 0;
 put_pid(vc->vt_pid);
 vc->vt_pid = ((void*)0);
 vc->vt_newvt = -1;
 if (!in_interrupt())
  reset_palette(vc);
}
