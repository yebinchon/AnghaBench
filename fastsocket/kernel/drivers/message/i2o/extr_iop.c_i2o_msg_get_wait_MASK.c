#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct i2o_message {int dummy; } ;
struct i2o_controller {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct i2o_message* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct i2o_message*) ; 
 struct i2o_message* FUNC2 (struct i2o_controller*) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,unsigned long) ; 

struct i2o_message *FUNC6(struct i2o_controller *c, int wait)
{
	unsigned long timeout = jiffies + wait * HZ;
	struct i2o_message *msg;

	while (FUNC1(msg = FUNC2(c))) {
		if (FUNC5(jiffies, timeout)) {
			FUNC3("%s: Timeout waiting for message frame.\n",
				  c->name);
			return FUNC0(-ETIMEDOUT);
		}
		FUNC4(1);
	}

	return msg;
}