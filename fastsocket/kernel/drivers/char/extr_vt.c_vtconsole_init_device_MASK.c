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
struct con_driver {int /*<<< orphan*/  flag; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CON_DRIVER_FLAG_ATTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct con_driver*) ; 
 int /*<<< orphan*/ * device_attrs ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct con_driver *con)
{
	int i;
	int error = 0;

	con->flag |= CON_DRIVER_FLAG_ATTR;
	FUNC1(con->dev, con);
	for (i = 0; i < FUNC0(device_attrs); i++) {
		error = FUNC2(con->dev, &device_attrs[i]);
		if (error)
			break;
	}

	if (error) {
		while (--i >= 0)
			FUNC3(con->dev, &device_attrs[i]);
		con->flag &= ~CON_DRIVER_FLAG_ATTR;
	}

	return error;
}