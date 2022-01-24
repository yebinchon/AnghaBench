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
typedef  int u8 ;
struct TYPE_3__ {void** head; } ;
struct i2o_message {void** body; TYPE_1__ u; } ;
struct TYPE_4__ {int tid; } ;
struct i2o_device {TYPE_2__ lct_data; struct i2o_controller* iop; } ;
struct i2o_controller {int dummy; } ;
struct i2o_block_device {int power; struct i2o_device* i2o_dev; } ;

/* Variables and functions */
 int FOUR_WORD_MSG_SIZE ; 
 int HOST_TID ; 
 int I2O_CMD_BLOCK_POWER ; 
 int /*<<< orphan*/  I2O_TIMEOUT_MESSAGE_GET ; 
 scalar_t__ FUNC0 (struct i2o_message*) ; 
 int FUNC1 (struct i2o_message*) ; 
 int SGL_OFFSET_0 ; 
 void* FUNC2 (int) ; 
 struct i2o_message* FUNC3 (struct i2o_controller*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2o_controller*,struct i2o_message*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct i2o_block_device *dev, u8 op)
{
	struct i2o_device *i2o_dev = dev->i2o_dev;
	struct i2o_controller *c = i2o_dev->iop;
	struct i2o_message *msg;
	int rc;

	msg = FUNC3(c, I2O_TIMEOUT_MESSAGE_GET);
	if (FUNC0(msg))
		return FUNC1(msg);

	msg->u.head[0] = FUNC2(FOUR_WORD_MSG_SIZE | SGL_OFFSET_0);
	msg->u.head[1] =
	    FUNC2(I2O_CMD_BLOCK_POWER << 24 | HOST_TID << 12 | i2o_dev->
			lct_data.tid);
	msg->body[0] = FUNC2(op << 24);
	FUNC5("Power...\n");

	rc = FUNC4(c, msg, 60);
	if (!rc)
		dev->power = op;

	return rc;
}