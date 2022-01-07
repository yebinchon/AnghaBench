
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_device {int unregistered; scalar_t__ reset; } ;


 scalar_t__ AP_RESET_DO ;
 scalar_t__ ap_poll_queue (struct ap_device*,unsigned long*) ;
 int ap_reset (struct ap_device*) ;

__attribute__((used)) static int __ap_poll_device(struct ap_device *ap_dev, unsigned long *flags)
{
 if (!ap_dev->unregistered) {
  if (ap_poll_queue(ap_dev, flags))
   ap_dev->unregistered = 1;
  if (ap_dev->reset == AP_RESET_DO)
   ap_reset(ap_dev);
 }
 return 0;
}
