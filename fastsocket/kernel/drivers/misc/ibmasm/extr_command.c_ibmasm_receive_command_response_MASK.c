#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct service_processor {struct command* current_command; } ;
struct command {int /*<<< orphan*/  wait; int /*<<< orphan*/  status; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBMASM_CMD_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 int /*<<< orphan*/  FUNC1 (struct service_processor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct service_processor *sp, void *response, size_t size)
{
	struct command *cmd = sp->current_command;

	if (!sp->current_command)
		return;

	FUNC2(cmd->buffer, response, FUNC3(size, cmd->buffer_size));
	cmd->status = IBMASM_CMD_COMPLETE;
	FUNC4(&sp->current_command->wait);
	FUNC0(sp->current_command);
	FUNC1(sp);
}