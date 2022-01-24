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
struct con_driver {int flag; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int CON_DRIVER_FLAG_ATTR ; 
 int /*<<< orphan*/ * device_attrs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct con_driver *con)
{
	int i;

	if (con->flag & CON_DRIVER_FLAG_ATTR) {
		for (i = 0; i < FUNC0(device_attrs); i++)
			FUNC1(con->dev, &device_attrs[i]);
		con->flag &= ~CON_DRIVER_FLAG_ATTR;
	}
}