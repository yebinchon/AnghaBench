
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ShutdownMonitoringTimer; scalar_t__ FirmwareType; scalar_t__ HardwareType; int IO_Address; int MonitoringTimer; int queue_lock; scalar_t__ ControllerInitialized; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 int DAC960_DestroyAuxiliaryStructures (TYPE_1__*) ;
 int DAC960_DestroyProcEntries (TYPE_1__*) ;
 int DAC960_DetectCleanup (TYPE_1__*) ;
 int DAC960_Notice (char*,TYPE_1__*) ;
 scalar_t__ DAC960_PD_Controller ;
 int DAC960_UnregisterBlockDevice (TYPE_1__*) ;
 scalar_t__ DAC960_V1_Controller ;
 int DAC960_V1_ExecuteType3 (TYPE_1__*,int ,int ) ;
 int DAC960_V1_Flush ;
 int DAC960_V2_DeviceOperation (TYPE_1__*,int ,int ) ;
 int DAC960_V2_PauseDevice ;
 int DAC960_V2_RAID_Controller ;
 int del_timer_sync (int *) ;
 int release_region (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void DAC960_FinalizeController(DAC960_Controller_T *Controller)
{
  if (Controller->ControllerInitialized)
    {
      unsigned long flags;
      spin_lock_irqsave(&Controller->queue_lock, flags);
      Controller->ShutdownMonitoringTimer = 1;
      spin_unlock_irqrestore(&Controller->queue_lock, flags);

      del_timer_sync(&Controller->MonitoringTimer);
      if (Controller->FirmwareType == DAC960_V1_Controller)
 {
   DAC960_Notice("Flushing Cache...", Controller);
   DAC960_V1_ExecuteType3(Controller, DAC960_V1_Flush, 0);
   DAC960_Notice("done\n", Controller);

   if (Controller->HardwareType == DAC960_PD_Controller)
       release_region(Controller->IO_Address, 0x80);
 }
      else
 {
   DAC960_Notice("Flushing Cache...", Controller);
   DAC960_V2_DeviceOperation(Controller, DAC960_V2_PauseDevice,
        DAC960_V2_RAID_Controller);
   DAC960_Notice("done\n", Controller);
 }
    }
  DAC960_UnregisterBlockDevice(Controller);
  DAC960_DestroyAuxiliaryStructures(Controller);
  DAC960_DestroyProcEntries(Controller);
  DAC960_DetectCleanup(Controller);
}
