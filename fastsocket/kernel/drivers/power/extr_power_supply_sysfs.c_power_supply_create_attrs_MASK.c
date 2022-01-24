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
struct power_supply {int num_properties; size_t* properties; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * power_supply_attrs ; 
 int /*<<< orphan*/ * power_supply_static_attrs ; 

int FUNC3(struct power_supply *psy)
{
	int rc = 0;
	int i, j;

	for (i = 0; i < FUNC0(power_supply_static_attrs); i++) {
		rc = FUNC1(psy->dev,
			    &power_supply_static_attrs[i]);
		if (rc)
			goto statics_failed;
	}

	for (j = 0; j < psy->num_properties; j++) {
		rc = FUNC1(psy->dev,
			    &power_supply_attrs[psy->properties[j]]);
		if (rc)
			goto dynamics_failed;
	}

	goto succeed;

dynamics_failed:
	while (j--)
		FUNC2(psy->dev,
			   &power_supply_attrs[psy->properties[j]]);
statics_failed:
	while (i--)
		FUNC2(psy->dev, &power_supply_static_attrs[i]);
succeed:
	return rc;
}