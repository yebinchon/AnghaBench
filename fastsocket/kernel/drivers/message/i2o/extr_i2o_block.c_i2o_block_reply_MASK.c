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
typedef  int u32 ;
struct request {int /*<<< orphan*/  errors; } ;
struct TYPE_3__ {int /*<<< orphan*/  tcntxt; } ;
struct TYPE_4__ {int /*<<< orphan*/ * head; TYPE_1__ s; } ;
struct i2o_message {int /*<<< orphan*/ * body; TYPE_2__ u; } ;
struct i2o_controller {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int,int) ; 
 struct request* FUNC1 (struct i2o_controller*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct i2o_controller *c, u32 m,
			   struct i2o_message *msg)
{
	struct request *req;
	int error = 0;

	req = FUNC1(c, FUNC2(msg->u.s.tcntxt));
	if (FUNC4(!req)) {
		FUNC3("NULL reply received!\n");
		return -1;
	}

	/*
	 *      Lets see what is cooking. We stuffed the
	 *      request in the context.
	 */

	if ((FUNC2(msg->body[0]) >> 24) != 0) {
		u32 status = FUNC2(msg->body[0]);
		/*
		 *      Device not ready means two things. One is that the
		 *      the thing went offline (but not a removal media)
		 *
		 *      The second is that you have a SuperTrak 100 and the
		 *      firmware got constipated. Unlike standard i2o card
		 *      setups the supertrak returns an error rather than
		 *      blocking for the timeout in these cases.
		 *
		 *      Don't stick a supertrak100 into cache aggressive modes
		 */

		FUNC3("TID %03x error status: 0x%02x, detailed status: "
			"0x%04x\n", (FUNC2(msg->u.head[1]) >> 12 & 0xfff),
			status >> 24, status & 0xffff);

		req->errors++;

		error = -EIO;
	}

	FUNC0(req, error, FUNC2(msg->body[1]));

	return 1;
}