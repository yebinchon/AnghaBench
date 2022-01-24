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
struct i2o_controller {int /*<<< orphan*/  device; int /*<<< orphan*/  name; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  i2o_controllers ; 
 int /*<<< orphan*/  FUNC2 (struct i2o_controller*) ; 
 int FUNC3 (struct i2o_controller*) ; 
 int FUNC4 (struct i2o_controller*) ; 
 int FUNC5 (struct i2o_controller*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2o_controller*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

int FUNC12(struct i2o_controller *c)
{
	int rc;

	if ((rc = FUNC0(&c->device))) {
		FUNC10("%s: could not add controller\n", c->name);
		goto iop_reset;
	}

	FUNC11("%s: Activating I2O controller...\n", c->name);
	FUNC11("%s: This may take a few minutes if there are many devices\n",
		 c->name);

	if ((rc = FUNC4(c))) {
		FUNC10("%s: could not activate controller\n", c->name);
		goto device_del;
	}

	FUNC9("%s: building sys table...\n", c->name);

	if ((rc = FUNC7()))
		goto device_del;

	FUNC9("%s: online controller...\n", c->name);

	if ((rc = FUNC5(c)))
		goto device_del;

	FUNC9("%s: getting LCT...\n", c->name);

	if ((rc = FUNC3(c)))
		goto device_del;

	FUNC8(&c->list, &i2o_controllers);

	FUNC2(c);

	FUNC11("%s: Controller added\n", c->name);

	return 0;

      device_del:
	FUNC1(&c->device);

      iop_reset:
	FUNC6(c);

	return rc;
}