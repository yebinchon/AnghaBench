#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ CommandStatus; int /*<<< orphan*/  CommandMailbox; } ;
struct TYPE_8__ {TYPE_1__ V2; int /*<<< orphan*/  CommandType; } ;
typedef  scalar_t__ DAC960_V2_CommandStatus_T ;
typedef  int /*<<< orphan*/  DAC960_V2_CommandMailbox_T ;
typedef  int /*<<< orphan*/  DAC960_Controller_T ;
typedef  TYPE_2__ DAC960_Command_T ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  DAC960_ImmediateCommand ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 scalar_t__ DAC960_V2_NormalCompletion ; 

__attribute__((used)) static bool FUNC5(DAC960_Controller_T *Controller,
			int Channel, int TargetID, int LogicalUnit)
{
      DAC960_Command_T *Command;
      DAC960_V2_CommandMailbox_T *CommandMailbox;
      DAC960_V2_CommandStatus_T CommandStatus;

      Command = FUNC0(Controller);
      CommandMailbox = &Command->V2.CommandMailbox;
      FUNC3(Command);
      Command->CommandType = DAC960_ImmediateCommand;

      FUNC4(Controller, CommandMailbox,
			Channel, TargetID, LogicalUnit);

      FUNC2(Command);
      CommandStatus = Command->V2.CommandStatus;
      FUNC1(Command);
      return (CommandStatus == DAC960_V2_NormalCompletion);
}