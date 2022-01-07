
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {unsigned long data; int function; scalar_t__ expires; } ;
struct TYPE_11__ {int ControllerInitialized; TYPE_2__ MonitoringTimer; } ;
typedef TYPE_1__ DAC960_Controller_T ;


 scalar_t__ DAC960_CreateAuxiliaryStructures (TYPE_1__*) ;
 int DAC960_MonitoringTimerFunction ;
 scalar_t__ DAC960_MonitoringTimerInterval ;
 scalar_t__ DAC960_ReadControllerConfiguration (TYPE_1__*) ;
 scalar_t__ DAC960_ReadDeviceConfiguration (TYPE_1__*) ;
 scalar_t__ DAC960_RegisterBlockDevice (TYPE_1__*) ;
 scalar_t__ DAC960_ReportControllerConfiguration (TYPE_1__*) ;
 scalar_t__ DAC960_ReportDeviceConfiguration (TYPE_1__*) ;
 int add_timer (TYPE_2__*) ;
 int init_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static bool
DAC960_InitializeController(DAC960_Controller_T *Controller)
{
  if (DAC960_ReadControllerConfiguration(Controller) &&
      DAC960_ReportControllerConfiguration(Controller) &&
      DAC960_CreateAuxiliaryStructures(Controller) &&
      DAC960_ReadDeviceConfiguration(Controller) &&
      DAC960_ReportDeviceConfiguration(Controller) &&
      DAC960_RegisterBlockDevice(Controller))
    {



      init_timer(&Controller->MonitoringTimer);
      Controller->MonitoringTimer.expires =
 jiffies + DAC960_MonitoringTimerInterval;
      Controller->MonitoringTimer.data = (unsigned long) Controller;
      Controller->MonitoringTimer.function = DAC960_MonitoringTimerFunction;
      add_timer(&Controller->MonitoringTimer);
      Controller->ControllerInitialized = 1;
      return 1;
    }
  return 0;
}
