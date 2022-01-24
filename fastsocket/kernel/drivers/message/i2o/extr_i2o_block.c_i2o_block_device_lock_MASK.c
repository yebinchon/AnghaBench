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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {void** head; } ;
struct i2o_message {void** body; TYPE_2__ u; } ;
struct TYPE_3__ {int tid; } ;
struct i2o_device {int /*<<< orphan*/  iop; TYPE_1__ lct_data; } ;

/* Variables and functions */
 int FIVE_WORD_MSG_SIZE ; 
 int HOST_TID ; 
 int I2O_CMD_BLOCK_MLOCK ; 
 int /*<<< orphan*/  I2O_TIMEOUT_MESSAGE_GET ; 
 scalar_t__ FUNC0 (struct i2o_message*) ; 
 int FUNC1 (struct i2o_message*) ; 
 int SGL_OFFSET_0 ; 
 void* FUNC2 (int) ; 
 struct i2o_message* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct i2o_message*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct i2o_device *dev, u32 media_id)
{
	struct i2o_message *msg;

	msg = FUNC3(dev->iop, I2O_TIMEOUT_MESSAGE_GET);
	if (FUNC0(msg))
		return FUNC1(msg);

	msg->u.head[0] = FUNC2(FIVE_WORD_MSG_SIZE | SGL_OFFSET_0);
	msg->u.head[1] =
	    FUNC2(I2O_CMD_BLOCK_MLOCK << 24 | HOST_TID << 12 | dev->
			lct_data.tid);
	msg->body[0] = FUNC2(-1);
	FUNC5("Locking...\n");

	return FUNC4(dev->iop, msg, 2);
}