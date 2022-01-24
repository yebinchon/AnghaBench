#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ulong ;
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_6__ {void* tcntxt; void* icntxt; } ;
struct TYPE_7__ {TYPE_1__ s; void** head; } ;
struct i2o_message {void** body; TYPE_2__ u; } ;
struct TYPE_9__ {int phys; } ;
struct TYPE_8__ {scalar_t__* virt; int /*<<< orphan*/  phys; } ;
struct i2o_controller {TYPE_4__ out_queue; int /*<<< orphan*/  name; TYPE_3__ status; } ;
struct TYPE_10__ {int context; } ;

/* Variables and functions */
 int ADAPTER_TID ; 
 int EIGHT_WORD_MSG_SIZE ; 
 int ETIMEDOUT ; 
 int HOST_TID ; 
 int HZ ; 
 scalar_t__ volatile I2O_CMD_IN_PROGRESS ; 
 int I2O_CMD_OUTBOUND_INIT ; 
 int I2O_MAX_OUTBOUND_MSG_FRAMES ; 
 int I2O_OUTBOUND_MSG_FRAME_SIZE ; 
 int I2O_TIMEOUT_INIT_OUTBOUND_QUEUE ; 
 int /*<<< orphan*/  I2O_TIMEOUT_MESSAGE_GET ; 
 scalar_t__ FUNC0 (struct i2o_message*) ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct i2o_message*) ; 
 int SGL_OFFSET_6 ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__ i2o_exec_driver ; 
 int /*<<< orphan*/  FUNC5 (struct i2o_controller*,int) ; 
 struct i2o_message* FUNC6 (struct i2o_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2o_controller*,struct i2o_message*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct i2o_controller *c)
{
	u32 m;
	volatile u8 *status = c->status.virt;
	struct i2o_message *msg;
	ulong timeout;
	int i;

	FUNC9("%s: Initializing Outbound Queue...\n", c->name);

	FUNC8(c->status.virt, 0, 4);

	msg = FUNC6(c, I2O_TIMEOUT_MESSAGE_GET);
	if (FUNC0(msg))
		return FUNC1(msg);

	msg->u.head[0] = FUNC2(EIGHT_WORD_MSG_SIZE | SGL_OFFSET_6);
	msg->u.head[1] =
	    FUNC2(I2O_CMD_OUTBOUND_INIT << 24 | HOST_TID << 12 |
			ADAPTER_TID);
	msg->u.s.icntxt = FUNC2(i2o_exec_driver.context);
	msg->u.s.tcntxt = FUNC2(0x00000000);
	msg->body[0] = FUNC2(PAGE_SIZE);
	/* Outbound msg frame size in words and Initcode */
	msg->body[1] = FUNC2(I2O_OUTBOUND_MSG_FRAME_SIZE << 16 | 0x80);
	msg->body[2] = FUNC2(0xd0000004);
	msg->body[3] = FUNC2(FUNC4(c->status.phys));
	msg->body[4] = FUNC2(FUNC3(c->status.phys));

	FUNC7(c, msg);

	timeout = jiffies + I2O_TIMEOUT_INIT_OUTBOUND_QUEUE * HZ;
	while (*status <= I2O_CMD_IN_PROGRESS) {
		if (FUNC12(jiffies, timeout)) {
			FUNC10("%s: Timeout Initializing\n", c->name);
			return -ETIMEDOUT;
		}
		FUNC11(1);
	}

	m = c->out_queue.phys;

	/* Post frames */
	for (i = 0; i < I2O_MAX_OUTBOUND_MSG_FRAMES; i++) {
		FUNC5(c, m);
		FUNC13(1);	/* Promise */
		m += I2O_OUTBOUND_MSG_FRAME_SIZE * sizeof(u32);
	}

	return 0;
}