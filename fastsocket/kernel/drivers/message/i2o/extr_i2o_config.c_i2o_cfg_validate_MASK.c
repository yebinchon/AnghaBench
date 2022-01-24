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
struct i2o_message {TYPE_1__ u; } ;
struct i2o_controller {int dummy; } ;
struct TYPE_4__ {int context; } ;

/* Variables and functions */
 int ENXIO ; 
 int ETIMEDOUT ; 
 int FOUR_WORD_MSG_SIZE ; 
 int HOST_TID ; 
 int I2O_CMD_CONFIG_VALIDATE ; 
 int I2O_POST_WAIT_OK ; 
 int /*<<< orphan*/  I2O_TIMEOUT_MESSAGE_GET ; 
 scalar_t__ FUNC0 (struct i2o_message*) ; 
 int FUNC1 (struct i2o_message*) ; 
 int SGL_OFFSET_0 ; 
 void* FUNC2 (int) ; 
 TYPE_2__ i2o_config_driver ; 
 struct i2o_controller* FUNC3 (int) ; 
 struct i2o_message* FUNC4 (struct i2o_controller*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2o_controller*,struct i2o_message*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static int FUNC7(unsigned long arg)
{
	int token;
	int iop = (int)arg;
	struct i2o_message *msg;
	struct i2o_controller *c;

	c = FUNC3(iop);
	if (!c)
		return -ENXIO;

	msg = FUNC4(c, I2O_TIMEOUT_MESSAGE_GET);
	if (FUNC0(msg))
		return FUNC1(msg);

	msg->u.head[0] = FUNC2(FOUR_WORD_MSG_SIZE | SGL_OFFSET_0);
	msg->u.head[1] =
	    FUNC2(I2O_CMD_CONFIG_VALIDATE << 24 | HOST_TID << 12 | iop);
	msg->u.head[2] = FUNC2(i2o_config_driver.context);
	msg->u.head[3] = FUNC2(0);

	token = FUNC5(c, msg, 10);

	if (token != I2O_POST_WAIT_OK) {
		FUNC6("Can't validate configuration, ErrorStatus = %d\n",
			 token);
		return -ETIMEDOUT;
	}

	return 0;
}