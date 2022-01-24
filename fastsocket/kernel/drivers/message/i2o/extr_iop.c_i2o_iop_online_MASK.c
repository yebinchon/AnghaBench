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
struct i2o_controller {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct i2o_controller*) ; 
 int FUNC1 (struct i2o_controller*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2o_controller *c)
{
	int rc;

	rc = FUNC1(c);
	if (rc)
		return rc;

	/* In READY state */
	FUNC2("%s: Attempting to enable...\n", c->name);
	rc = FUNC0(c);
	if (rc)
		return rc;

	return 0;
}