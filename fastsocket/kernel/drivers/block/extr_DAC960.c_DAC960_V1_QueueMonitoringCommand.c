
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int BusAddress; int CommandOpcode; } ;
struct TYPE_13__ {TYPE_2__ Type3; } ;
struct TYPE_10__ {TYPE_4__ CommandMailbox; } ;
struct TYPE_15__ {int CommandType; TYPE_1__ V1; TYPE_5__* Controller; } ;
struct TYPE_12__ {int NewEnquiryDMA; } ;
struct TYPE_14__ {TYPE_3__ V1; } ;
typedef TYPE_4__ DAC960_V1_CommandMailbox_T ;
typedef TYPE_5__ DAC960_Controller_T ;
typedef TYPE_6__ DAC960_Command_T ;


 int DAC960_MonitoringCommand ;
 int DAC960_QueueCommand (TYPE_6__*) ;
 int DAC960_V1_ClearCommand (TYPE_6__*) ;
 int DAC960_V1_Enquiry ;

__attribute__((used)) static void DAC960_V1_QueueMonitoringCommand(DAC960_Command_T *Command)
{
  DAC960_Controller_T *Controller = Command->Controller;
  DAC960_V1_CommandMailbox_T *CommandMailbox = &Command->V1.CommandMailbox;
  DAC960_V1_ClearCommand(Command);
  Command->CommandType = DAC960_MonitoringCommand;
  CommandMailbox->Type3.CommandOpcode = DAC960_V1_Enquiry;
  CommandMailbox->Type3.BusAddress = Controller->V1.NewEnquiryDMA;
  DAC960_QueueCommand(Command);
}
