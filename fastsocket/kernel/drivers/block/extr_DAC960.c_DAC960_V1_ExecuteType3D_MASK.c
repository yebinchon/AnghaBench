#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_9__ {unsigned char Channel; unsigned char TargetID; int /*<<< orphan*/  BusAddress; int /*<<< orphan*/  CommandOpcode; } ;
struct TYPE_11__ {TYPE_1__ Type3D; } ;
struct TYPE_10__ {scalar_t__ CommandStatus; TYPE_3__ CommandMailbox; } ;
struct TYPE_12__ {TYPE_2__ V1; int /*<<< orphan*/  CommandType; } ;
typedef  scalar_t__ DAC960_V1_CommandStatus_T ;
typedef  int /*<<< orphan*/  DAC960_V1_CommandOpcode_T ;
typedef  TYPE_3__ DAC960_V1_CommandMailbox_T ;
typedef  int /*<<< orphan*/  DAC960_Controller_T ;
typedef  TYPE_4__ DAC960_Command_T ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  DAC960_ImmediateCommand ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ DAC960_V1_NormalCompletion ; 

__attribute__((used)) static bool FUNC4(DAC960_Controller_T *Controller,
				       DAC960_V1_CommandOpcode_T CommandOpcode,
				       unsigned char Channel,
				       unsigned char TargetID,
				       dma_addr_t DataDMA)
{
  DAC960_Command_T *Command = FUNC0(Controller);
  DAC960_V1_CommandMailbox_T *CommandMailbox = &Command->V1.CommandMailbox;
  DAC960_V1_CommandStatus_T CommandStatus;
  FUNC3(Command);
  Command->CommandType = DAC960_ImmediateCommand;
  CommandMailbox->Type3D.CommandOpcode = CommandOpcode;
  CommandMailbox->Type3D.Channel = Channel;
  CommandMailbox->Type3D.TargetID = TargetID;
  CommandMailbox->Type3D.BusAddress = DataDMA;
  FUNC2(Command);
  CommandStatus = Command->V1.CommandStatus;
  FUNC1(Command);
  return (CommandStatus == DAC960_V1_NormalCompletion);
}