
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pidff_device {int * reports; int hid; TYPE_4__* set_ramp; TYPE_1__* block_load; } ;
struct TYPE_6__ {int end_level; int start_level; } ;
struct TYPE_7__ {TYPE_2__ ramp; } ;
struct ff_effect {TYPE_3__ u; } ;
struct TYPE_8__ {int * value; } ;
struct TYPE_5__ {int * value; } ;


 size_t PID_EFFECT_BLOCK_INDEX ;
 size_t PID_RAMP_END ;
 size_t PID_RAMP_START ;
 size_t PID_SET_RAMP ;
 int USB_DIR_OUT ;
 int pidff_set_signed (TYPE_4__*,int ) ;
 int usbhid_submit_report (int ,int ,int ) ;

__attribute__((used)) static void pidff_set_ramp_force_report(struct pidff_device *pidff,
     struct ff_effect *effect)
{
 pidff->set_ramp[PID_EFFECT_BLOCK_INDEX].value[0] =
  pidff->block_load[PID_EFFECT_BLOCK_INDEX].value[0];
 pidff_set_signed(&pidff->set_ramp[PID_RAMP_START],
    effect->u.ramp.start_level);
 pidff_set_signed(&pidff->set_ramp[PID_RAMP_END],
    effect->u.ramp.end_level);
 usbhid_submit_report(pidff->hid, pidff->reports[PID_SET_RAMP],
     USB_DIR_OUT);
}
