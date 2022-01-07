
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isci_remote_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ current_state_id; } ;
struct isci_host {TYPE_2__ sm; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ SCIC_STOPPING ;
 int dev_dbg (int *,char*,struct isci_host*,struct isci_remote_device*,scalar_t__) ;
 int isci_host_stop_complete (struct isci_host*) ;
 int sci_controller_has_remote_devices_stopping (struct isci_host*) ;

void sci_controller_remote_device_stopped(struct isci_host *ihost,
       struct isci_remote_device *idev)
{
 if (ihost->sm.current_state_id != SCIC_STOPPING) {
  dev_dbg(&ihost->pdev->dev,
   "SCIC Controller 0x%p remote device stopped event "
   "from device 0x%p in unexpected state %d\n",
   ihost, idev,
   ihost->sm.current_state_id);
  return;
 }

 if (!sci_controller_has_remote_devices_stopping(ihost))
  isci_host_stop_complete(ihost);
}
