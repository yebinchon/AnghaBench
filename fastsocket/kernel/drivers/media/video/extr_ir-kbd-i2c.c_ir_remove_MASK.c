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
struct i2c_client {int dummy; } ;
struct IR_i2c {int /*<<< orphan*/  rc; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct IR_i2c* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct IR_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct IR_i2c *ir = FUNC1(client);

	/* kill outstanding polls */
	FUNC0(&ir->work);

	/* unregister device */
	FUNC3(ir->rc);

	/* free memory */
	FUNC2(ir);
	return 0;
}