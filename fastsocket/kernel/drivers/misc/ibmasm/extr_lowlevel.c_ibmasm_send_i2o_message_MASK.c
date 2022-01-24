#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct service_processor {int /*<<< orphan*/  base_address; struct command* current_command; } ;
struct i2o_message {int /*<<< orphan*/  data; int /*<<< orphan*/  header; } ;
struct i2o_header {int dummy; } ;
struct command {TYPE_1__* buffer; } ;
struct TYPE_4__ {int /*<<< orphan*/  message_size; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 struct i2o_message* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ header ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct service_processor *sp)
{
	u32 mfa;
	unsigned int command_size;
	struct i2o_message *message;
	struct command *command = sp->current_command;

	mfa = FUNC2(sp->base_address);
	if (!mfa)
		return 1;

	command_size = FUNC0(command->buffer);
	header.message_size = FUNC4(command_size);

	message = FUNC1(sp->base_address, mfa);

	FUNC3(&message->header, &header, sizeof(struct i2o_header));
	FUNC3(&message->data, command->buffer, command_size);

	FUNC5(sp->base_address, mfa);

	return 0;
}