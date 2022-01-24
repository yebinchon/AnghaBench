#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {void** head; } ;
struct i2o_message {void** body; TYPE_2__ u; } ;
struct TYPE_9__ {int len; int phys; TYPE_3__* virt; } ;
struct i2o_controller {int /*<<< orphan*/  name; TYPE_4__ hrt; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int num_entries; int entry_len; } ;
typedef  TYPE_3__ i2o_hrt ;
struct TYPE_6__ {struct device dev; } ;

/* Variables and functions */
 int ADAPTER_TID ; 
 int EBUSY ; 
 int ENOMEM ; 
 int HOST_TID ; 
 int I2O_CMD_HRT_GET ; 
 int I2O_HRT_GET_TRIES ; 
 int /*<<< orphan*/  I2O_TIMEOUT_MESSAGE_GET ; 
 scalar_t__ FUNC0 (struct i2o_message*) ; 
 int FUNC1 (struct i2o_message*) ; 
 int SGL_OFFSET_4 ; 
 int SIX_WORD_MSG_SIZE ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct device*,TYPE_4__*,int) ; 
 struct i2o_message* FUNC4 (struct i2o_controller*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2o_controller*,struct i2o_message*,int,TYPE_4__*) ; 
 int FUNC6 (struct i2o_controller*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct i2o_controller *c)
{
	int rc;
	int i;
	i2o_hrt *hrt = c->hrt.virt;
	u32 size = sizeof(i2o_hrt);
	struct device *dev = &c->pdev->dev;

	for (i = 0; i < I2O_HRT_GET_TRIES; i++) {
		struct i2o_message *msg;

		msg = FUNC4(c, I2O_TIMEOUT_MESSAGE_GET);
		if (FUNC0(msg))
			return FUNC1(msg);

		msg->u.head[0] = FUNC2(SIX_WORD_MSG_SIZE | SGL_OFFSET_4);
		msg->u.head[1] =
		    FUNC2(I2O_CMD_HRT_GET << 24 | HOST_TID << 12 |
				ADAPTER_TID);
		msg->body[0] = FUNC2(0xd0000000 | c->hrt.len);
		msg->body[1] = FUNC2(c->hrt.phys);

		rc = FUNC5(c, msg, 20, &c->hrt);

		if (rc < 0) {
			FUNC7("%s: Unable to get HRT (status=%#x)\n", c->name,
				-rc);
			return rc;
		}

		size = hrt->num_entries * hrt->entry_len << 2;
		if (size > c->hrt.len) {
			if (FUNC3(dev, &c->hrt, size))
				return -ENOMEM;
			else
				hrt = c->hrt.virt;
		} else
			return FUNC6(c);
	}

	FUNC7("%s: Unable to get HRT after %d tries, giving up\n", c->name,
		I2O_HRT_GET_TRIES);

	return -EBUSY;
}