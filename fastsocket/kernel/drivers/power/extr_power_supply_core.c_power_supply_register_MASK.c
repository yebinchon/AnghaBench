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
struct power_supply {int /*<<< orphan*/  dev; int /*<<< orphan*/  changed_work; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,struct power_supply*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct power_supply*) ; 
 int /*<<< orphan*/  power_supply_changed_work ; 
 int /*<<< orphan*/  power_supply_class ; 
 int FUNC6 (struct power_supply*) ; 
 int FUNC7 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC8 (struct power_supply*) ; 

int FUNC9(struct device *parent, struct power_supply *psy)
{
	int rc = 0;

	psy->dev = FUNC3(power_supply_class, parent, 0, psy,
				 "%s", psy->name);
	if (FUNC1(psy->dev)) {
		rc = FUNC2(psy->dev);
		goto dev_create_failed;
	}

	FUNC0(&psy->changed_work, power_supply_changed_work);

	rc = FUNC6(psy);
	if (rc)
		goto create_attrs_failed;

	rc = FUNC7(psy);
	if (rc)
		goto create_triggers_failed;

	FUNC5(psy);

	goto success;

create_triggers_failed:
	FUNC8(psy);
create_attrs_failed:
	FUNC4(psy->dev);
dev_create_failed:
success:
	return rc;
}