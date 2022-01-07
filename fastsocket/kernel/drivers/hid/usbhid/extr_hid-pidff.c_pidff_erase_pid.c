
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pidff_device {int * reports; int hid; TYPE_1__* block_free; } ;
struct TYPE_2__ {int* value; } ;


 size_t PID_BLOCK_FREE ;
 size_t PID_EFFECT_BLOCK_INDEX ;
 int USB_DIR_OUT ;
 int usbhid_submit_report (int ,int ,int ) ;

__attribute__((used)) static void pidff_erase_pid(struct pidff_device *pidff, int pid_id)
{
 pidff->block_free[PID_EFFECT_BLOCK_INDEX].value[0] = pid_id;
 usbhid_submit_report(pidff->hid, pidff->reports[PID_BLOCK_FREE],
     USB_DIR_OUT);
}
