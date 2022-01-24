#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void** head; } ;
struct i2o_message {TYPE_1__ u; } ;
struct i2o_controller {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ADAPTER_TID ; 
 int FOUR_WORD_MSG_SIZE ; 
 int HOST_TID ; 
 int I2O_CMD_ADAPTER_CLEAR ; 
 int /*<<< orphan*/  I2O_TIMEOUT_MESSAGE_GET ; 
 scalar_t__ FUNC0 (struct i2o_message*) ; 
 int FUNC1 (struct i2o_message*) ; 
 int SGL_OFFSET_0 ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct i2o_message* FUNC5 (struct i2o_controller*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct i2o_controller*,struct i2o_message*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct i2o_controller *c)
{
	struct i2o_message *msg;
	int rc;

	msg = FUNC5(c, I2O_TIMEOUT_MESSAGE_GET);
	if (FUNC0(msg))
		return FUNC1(msg);

	/* Quiesce all IOPs first */
	FUNC4();

	msg->u.head[0] = FUNC2(FOUR_WORD_MSG_SIZE | SGL_OFFSET_0);
	msg->u.head[1] =
	    FUNC2(I2O_CMD_ADAPTER_CLEAR << 24 | HOST_TID << 12 |
			ADAPTER_TID);

	if ((rc = FUNC6(c, msg, 30)))
		FUNC8("%s: Unable to clear (status=%#x).\n", c->name, -rc);
	else
		FUNC7("%s: Cleared.\n", c->name);

	/* Enable all IOPs */
	FUNC3();

	return rc;
}