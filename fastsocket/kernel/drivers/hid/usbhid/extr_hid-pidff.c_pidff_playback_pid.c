
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pidff_device {int * reports; int hid; TYPE_2__* effect_operation; int * operation_id; TYPE_1__* effect_operation_status; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_3__ {int * value; } ;


 size_t PID_EFFECT_BLOCK_INDEX ;
 size_t PID_EFFECT_OPERATION ;
 size_t PID_EFFECT_START ;
 size_t PID_EFFECT_STOP ;
 size_t PID_LOOP_COUNT ;
 int USB_DIR_OUT ;
 int usbhid_submit_report (int ,int ,int ) ;

__attribute__((used)) static void pidff_playback_pid(struct pidff_device *pidff, int pid_id, int n)
{
 pidff->effect_operation[PID_EFFECT_BLOCK_INDEX].value[0] = pid_id;

 if (n == 0) {
  pidff->effect_operation_status->value[0] =
   pidff->operation_id[PID_EFFECT_STOP];
 } else {
  pidff->effect_operation_status->value[0] =
   pidff->operation_id[PID_EFFECT_START];
  pidff->effect_operation[PID_LOOP_COUNT].value[0] = n;
 }

 usbhid_submit_report(pidff->hid, pidff->reports[PID_EFFECT_OPERATION],
     USB_DIR_OUT);
}
