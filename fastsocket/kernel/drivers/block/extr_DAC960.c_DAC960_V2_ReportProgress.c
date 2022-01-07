
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int EphemeralProgressMessage; int ControllerNumber; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 int DAC960_Progress (char*,TYPE_1__*,unsigned char*,unsigned int,int ,unsigned int,int) ;

__attribute__((used)) static void DAC960_V2_ReportProgress(DAC960_Controller_T *Controller,
         unsigned char *MessageString,
         unsigned int LogicalDeviceNumber,
         unsigned long BlocksCompleted,
         unsigned long LogicalDeviceSize)
{
  Controller->EphemeralProgressMessage = 1;
  DAC960_Progress("%s in Progress: Logical Drive %d (/dev/rd/c%dd%d) "
    "%d%% completed\n", Controller,
    MessageString,
    LogicalDeviceNumber,
    Controller->ControllerNumber,
    LogicalDeviceNumber,
    (100 * (BlocksCompleted >> 7)) / (LogicalDeviceSize >> 7));
  Controller->EphemeralProgressMessage = 0;
}
