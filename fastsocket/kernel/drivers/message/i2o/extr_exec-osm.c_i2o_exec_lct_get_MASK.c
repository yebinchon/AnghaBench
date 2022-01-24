#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void** head; } ;
struct i2o_message {void** body; TYPE_1__ u; } ;
struct TYPE_4__ {int len; int phys; } ;
struct i2o_controller {TYPE_2__ dlct; } ;

/* Variables and functions */
 int ADAPTER_TID ; 
 int EAGAIN ; 
 int EIGHT_WORD_MSG_SIZE ; 
 int HOST_TID ; 
 int I2O_CMD_LCT_NOTIFY ; 
 int I2O_LCT_GET_TRIES ; 
 int /*<<< orphan*/  I2O_TIMEOUT_LCT_GET ; 
 int /*<<< orphan*/  I2O_TIMEOUT_MESSAGE_GET ; 
 scalar_t__ FUNC0 (struct i2o_message*) ; 
 int FUNC1 (struct i2o_message*) ; 
 int SGL_OFFSET_6 ; 
 void* FUNC2 (int) ; 
 int FUNC3 (struct i2o_controller*) ; 
 struct i2o_message* FUNC4 (struct i2o_controller*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2o_controller*,struct i2o_message*,int /*<<< orphan*/ ) ; 

int FUNC6(struct i2o_controller *c)
{
	struct i2o_message *msg;
	int i = 0;
	int rc = -EAGAIN;

	for (i = 1; i <= I2O_LCT_GET_TRIES; i++) {
		msg = FUNC4(c, I2O_TIMEOUT_MESSAGE_GET);
		if (FUNC0(msg))
			return FUNC1(msg);

		msg->u.head[0] =
		    FUNC2(EIGHT_WORD_MSG_SIZE | SGL_OFFSET_6);
		msg->u.head[1] =
		    FUNC2(I2O_CMD_LCT_NOTIFY << 24 | HOST_TID << 12 |
				ADAPTER_TID);
		msg->body[0] = FUNC2(0xffffffff);
		msg->body[1] = FUNC2(0x00000000);
		msg->body[2] = FUNC2(0xd0000000 | c->dlct.len);
		msg->body[3] = FUNC2(c->dlct.phys);

		rc = FUNC5(c, msg, I2O_TIMEOUT_LCT_GET);
		if (rc < 0)
			break;

		rc = FUNC3(c);
		if (rc != -EAGAIN)
			break;
	}

	return rc;
}