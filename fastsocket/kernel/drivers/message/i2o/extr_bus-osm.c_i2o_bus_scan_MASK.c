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
struct TYPE_4__ {void** head; } ;
struct i2o_message {TYPE_2__ u; } ;
struct TYPE_3__ {int tid; } ;
struct i2o_device {int /*<<< orphan*/  iop; TYPE_1__ lct_data; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FIVE_WORD_MSG_SIZE ; 
 int HOST_TID ; 
 int I2O_CMD_BUS_SCAN ; 
 int /*<<< orphan*/  I2O_TIMEOUT_MESSAGE_GET ; 
 scalar_t__ FUNC0 (struct i2o_message*) ; 
 int SGL_OFFSET_0 ; 
 void* FUNC1 (int) ; 
 struct i2o_message* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct i2o_message*,int) ; 

__attribute__((used)) static int FUNC4(struct i2o_device *dev)
{
	struct i2o_message *msg;

	msg = FUNC2(dev->iop, I2O_TIMEOUT_MESSAGE_GET);
	if (FUNC0(msg))
		return -ETIMEDOUT;

	msg->u.head[0] = FUNC1(FIVE_WORD_MSG_SIZE | SGL_OFFSET_0);
	msg->u.head[1] =
	    FUNC1(I2O_CMD_BUS_SCAN << 24 | HOST_TID << 12 | dev->lct_data.
			tid);

	return FUNC3(dev->iop, msg, 60);
}