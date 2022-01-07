
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_device {scalar_t__ reset; } ;


 scalar_t__ AP_RESET_ARMED ;
 scalar_t__ AP_RESET_DO ;
 int ap_tasklet ;
 scalar_t__ ap_using_interrupts () ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void ap_request_timeout(unsigned long data)
{
 struct ap_device *ap_dev = (struct ap_device *) data;

 if (ap_dev->reset == AP_RESET_ARMED) {
  ap_dev->reset = AP_RESET_DO;

  if (ap_using_interrupts())
   tasklet_schedule(&ap_tasklet);
 }
}
