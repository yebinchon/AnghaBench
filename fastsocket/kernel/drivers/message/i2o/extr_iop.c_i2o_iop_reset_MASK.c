#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_9__ {void* tcntxt; void* icntxt; } ;
struct TYPE_10__ {TYPE_2__ s; void** head; } ;
struct i2o_message {void** body; TYPE_3__ u; } ;
struct TYPE_11__ {int* virt; int /*<<< orphan*/  phys; } ;
struct TYPE_8__ {TYPE_5__* virt; } ;
struct i2o_controller {int /*<<< orphan*/  name; int /*<<< orphan*/  promise; int /*<<< orphan*/  no_quiesce; TYPE_4__ status; TYPE_1__ status_block; } ;
struct TYPE_12__ {int /*<<< orphan*/  iop_state; } ;
typedef  TYPE_5__ i2o_status_block ;
struct TYPE_13__ {int context; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAPTER_STATE_RESET ; 
 int ADAPTER_TID ; 
 int EIGHT_WORD_MSG_SIZE ; 
 int EPERM ; 
 int ETIMEDOUT ; 
 int HOST_TID ; 
 unsigned long HZ ; 
 int I2O_CMD_ADAPTER_RESET ; 
#define  I2O_CMD_IN_PROGRESS 129 
#define  I2O_CMD_REJECTED 128 
 unsigned long I2O_TIMEOUT_MESSAGE_GET ; 
 unsigned long I2O_TIMEOUT_RESET ; 
 scalar_t__ FUNC0 (struct i2o_message*) ; 
 int FUNC1 (struct i2o_message*) ; 
 int SGL_OFFSET_0 ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_7__ i2o_exec_driver ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct i2o_message* FUNC7 (struct i2o_controller*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct i2o_controller*,struct i2o_message*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2o_controller*,struct i2o_message*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2o_controller*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC17(struct i2o_controller *c)
{
	volatile u8 *status = c->status.virt;
	struct i2o_message *msg;
	unsigned long timeout;
	i2o_status_block *sb = c->status_block.virt;
	int rc = 0;

	FUNC12("%s: Resetting controller\n", c->name);

	msg = FUNC7(c, I2O_TIMEOUT_MESSAGE_GET);
	if (FUNC0(msg))
		return FUNC1(msg);

	FUNC11(c->status_block.virt, 0, 8);

	/* Quiesce all IOPs first */
	FUNC6();

	msg->u.head[0] = FUNC2(EIGHT_WORD_MSG_SIZE | SGL_OFFSET_0);
	msg->u.head[1] =
	    FUNC2(I2O_CMD_ADAPTER_RESET << 24 | HOST_TID << 12 |
			ADAPTER_TID);
	msg->u.s.icntxt = FUNC2(i2o_exec_driver.context);
	msg->u.s.tcntxt = FUNC2(0x00000000);
	msg->body[0] = FUNC2(0x00000000);
	msg->body[1] = FUNC2(0x00000000);
	msg->body[2] = FUNC2(FUNC4(c->status.phys));
	msg->body[3] = FUNC2(FUNC3(c->status.phys));

	FUNC9(c, msg);

	/* Wait for a reply */
	timeout = jiffies + I2O_TIMEOUT_RESET * HZ;
	while (!*status) {
		if (FUNC16(jiffies, timeout))
			break;

		FUNC15(1);
	}

	switch (*status) {
	case I2O_CMD_REJECTED:
		FUNC14("%s: IOP reset rejected\n", c->name);
		rc = -EPERM;
		break;

	case I2O_CMD_IN_PROGRESS:
		/*
		 * Once the reset is sent, the IOP goes into the INIT state
		 * which is indeterminate. We need to wait until the IOP has
		 * rebooted before we can let the system talk to it. We read
		 * the inbound Free_List until a message is available. If we
		 * can't read one in the given ammount of time, we assume the
		 * IOP could not reboot properly.
		 */
		FUNC12("%s: Reset in progress, waiting for reboot...\n",
			  c->name);

		while (FUNC0(msg = FUNC7(c, I2O_TIMEOUT_RESET))) {
			if (FUNC16(jiffies, timeout)) {
				FUNC13("%s: IOP reset timeout.\n", c->name);
				rc = FUNC1(msg);
				goto exit;
			}
			FUNC15(1);
		}
		FUNC8(c, msg);

		/* from here all quiesce commands are safe */
		c->no_quiesce = 0;

		/* verify if controller is in state RESET */
		FUNC10(c);

		if (!c->promise && (sb->iop_state != ADAPTER_STATE_RESET))
			FUNC14("%s: reset completed, but adapter not in RESET"
				 " state.\n", c->name);
		else
			FUNC12("%s: reset completed.\n", c->name);

		break;

	default:
		FUNC13("%s: IOP reset timeout.\n", c->name);
		rc = -ETIMEDOUT;
		break;
	}

      exit:
	/* Enable all IOPs */
	FUNC5();

	return rc;
}