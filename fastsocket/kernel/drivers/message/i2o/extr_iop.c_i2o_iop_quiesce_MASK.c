#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void** head; } ;
struct i2o_message {TYPE_1__ u; } ;
struct TYPE_5__ {TYPE_3__* virt; } ;
struct i2o_controller {int /*<<< orphan*/  name; TYPE_2__ status_block; } ;
struct TYPE_6__ {scalar_t__ iop_state; } ;
typedef  TYPE_3__ i2o_status_block ;

/* Variables and functions */
 scalar_t__ ADAPTER_STATE_OPERATIONAL ; 
 scalar_t__ ADAPTER_STATE_READY ; 
 int ADAPTER_TID ; 
 int FOUR_WORD_MSG_SIZE ; 
 int HOST_TID ; 
 int I2O_CMD_SYS_QUIESCE ; 
 int /*<<< orphan*/  I2O_TIMEOUT_MESSAGE_GET ; 
 scalar_t__ FUNC0 (struct i2o_message*) ; 
 int FUNC1 (struct i2o_message*) ; 
 int SGL_OFFSET_0 ; 
 void* FUNC2 (int) ; 
 struct i2o_message* FUNC3 (struct i2o_controller*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2o_controller*,struct i2o_message*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2o_controller*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct i2o_controller *c)
{
	struct i2o_message *msg;
	i2o_status_block *sb = c->status_block.virt;
	int rc;

	FUNC5(c);

	/* SysQuiesce discarded if IOP not in READY or OPERATIONAL state */
	if ((sb->iop_state != ADAPTER_STATE_READY) &&
	    (sb->iop_state != ADAPTER_STATE_OPERATIONAL))
		return 0;

	msg = FUNC3(c, I2O_TIMEOUT_MESSAGE_GET);
	if (FUNC0(msg))
		return FUNC1(msg);

	msg->u.head[0] = FUNC2(FOUR_WORD_MSG_SIZE | SGL_OFFSET_0);
	msg->u.head[1] =
	    FUNC2(I2O_CMD_SYS_QUIESCE << 24 | HOST_TID << 12 |
			ADAPTER_TID);

	/* Long timeout needed for quiesce if lots of devices */
	if ((rc = FUNC4(c, msg, 240)))
		FUNC7("%s: Unable to quiesce (status=%#x).\n", c->name, -rc);
	else
		FUNC6("%s: Quiesced.\n", c->name);

	FUNC5(c);	// Entered READY state

	return rc;
}