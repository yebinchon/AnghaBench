
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {scalar_t__ working_request; } ;


 int sci_controller_continue_io (scalar_t__) ;

__attribute__((used)) static void sci_remote_device_continue_request(void *dev)
{
 struct isci_remote_device *idev = dev;


 if (idev->working_request)
  sci_controller_continue_io(idev->working_request);
}
