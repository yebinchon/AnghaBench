
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct isci_remote_device {int owning_port; int flags; int domain_dev; } ;


 int IDEV_RNC_LLHANG_ENABLED ;
 scalar_t__ dev_is_sata (int ) ;
 int sci_port_set_hang_detection_timeout (int ,scalar_t__) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void isci_dev_set_hang_detection_timeout(
 struct isci_remote_device *idev,
 u32 timeout)
{
 if (dev_is_sata(idev->domain_dev)) {
  if (timeout) {
   if (test_and_set_bit(IDEV_RNC_LLHANG_ENABLED,
          &idev->flags))
    return;
  } else if (!test_and_clear_bit(IDEV_RNC_LLHANG_ENABLED,
            &idev->flags))
   return;

  sci_port_set_hang_detection_timeout(idev->owning_port,
          timeout);
 }
}
