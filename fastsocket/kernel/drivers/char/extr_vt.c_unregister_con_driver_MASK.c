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
struct consw {int dummy; } ;
struct con_driver {int flag; scalar_t__ last; scalar_t__ first; scalar_t__ node; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * desc; struct consw const* con; } ;

/* Variables and functions */
 int CON_DRIVER_FLAG_MODULE ; 
 int ENODEV ; 
 int MAX_NR_CON_DRIVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct consw const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct con_driver* registered_con_driver ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  vtconsole_class ; 
 int /*<<< orphan*/  FUNC5 (struct con_driver*) ; 

int FUNC6(const struct consw *csw)
{
	int i, retval = -ENODEV;

	FUNC1();

	/* cannot unregister a bound driver */
	if (FUNC2(csw))
		goto err;

	for (i = 0; i < MAX_NR_CON_DRIVER; i++) {
		struct con_driver *con_driver = &registered_con_driver[i];

		if (con_driver->con == csw &&
		    con_driver->flag & CON_DRIVER_FLAG_MODULE) {
			FUNC5(con_driver);
			FUNC3(vtconsole_class,
				       FUNC0(0, con_driver->node));
			con_driver->con = NULL;
			con_driver->desc = NULL;
			con_driver->dev = NULL;
			con_driver->node = 0;
			con_driver->flag = 0;
			con_driver->first = 0;
			con_driver->last = 0;
			retval = 0;
			break;
		}
	}
err:
	FUNC4();
	return retval;
}