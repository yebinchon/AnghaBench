
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ap_device {int queue_count; int reset; int timeout; TYPE_1__* drv; } ;
struct TYPE_2__ {int request_timeout; } ;


 int AP_RESET_ARMED ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void ap_increase_queue_count(struct ap_device *ap_dev)
{
 int timeout = ap_dev->drv->request_timeout;

 ap_dev->queue_count++;
 if (ap_dev->queue_count == 1) {
  mod_timer(&ap_dev->timeout, jiffies + timeout);
  ap_dev->reset = AP_RESET_ARMED;
 }
}
