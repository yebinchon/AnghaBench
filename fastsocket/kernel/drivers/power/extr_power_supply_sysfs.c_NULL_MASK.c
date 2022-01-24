#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct power_supply {int num_properties; size_t* properties; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct kobj_uevent_env {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device_attribute*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct kobj_uevent_env*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct power_supply* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device_attribute* power_supply_attrs ; 
 int FUNC8 (struct device*,struct device_attribute*,char*) ; 
 int FUNC9 (struct device*,struct device_attribute*,char*) ; 
 struct device_attribute* power_supply_static_attrs ; 
 char* FUNC10 (char*,char) ; 

int FUNC11(struct device *dev, struct kobj_uevent_env *env)
{
	struct power_supply *psy = FUNC3(dev);
	int ret = 0, j;
	char *prop_buf;
	char *attrname;

	FUNC2(dev, "uevent\n");

	if (!psy || !psy->dev) {
		FUNC2(dev, "No power supply yet\n");
		return ret;
	}

	FUNC2(dev, "POWER_SUPPLY_NAME=%s\n", psy->name);

	ret = FUNC1(env, "POWER_SUPPLY_NAME=%s", psy->name);
	if (ret)
		return ret;

	prop_buf = (char *)FUNC5(GFP_KERNEL);
	if (!prop_buf)
		return -ENOMEM;

	for (j = 0; j < FUNC0(power_supply_static_attrs); j++) {
		struct device_attribute *attr;
		char *line;

		attr = &power_supply_static_attrs[j];

		ret = FUNC9(dev, attr, prop_buf);
		if (ret < 0)
			goto out;

		line = FUNC10(prop_buf, '\n');
		if (line)
			*line = 0;

		attrname = FUNC7(attr->attr.name, GFP_KERNEL);
		if (!attrname) {
			ret = -ENOMEM;
			goto out;
		}

		FUNC2(dev, "Static prop %s=%s\n", attrname, prop_buf);

		ret = FUNC1(env, "POWER_SUPPLY_%s=%s", attrname, prop_buf);
		FUNC6(attrname);
		if (ret)
			goto out;
	}

	FUNC2(dev, "%zd dynamic props\n", psy->num_properties);

	for (j = 0; j < psy->num_properties; j++) {
		struct device_attribute *attr;
		char *line;

		attr = &power_supply_attrs[psy->properties[j]];

		ret = FUNC8(dev, attr, prop_buf);
		if (ret == -ENODEV) {
			/* When a battery is absent, we expect -ENODEV. Don't abort;
			   send the uevent with at least the the PRESENT=0 property */
			ret = 0;
			continue;
		}

		if (ret < 0)
			goto out;

		line = FUNC10(prop_buf, '\n');
		if (line)
			*line = 0;

		attrname = FUNC7(attr->attr.name, GFP_KERNEL);
		if (!attrname) {
			ret = -ENOMEM;
			goto out;
		}

		FUNC2(dev, "prop %s=%s\n", attrname, prop_buf);

		ret = FUNC1(env, "POWER_SUPPLY_%s=%s", attrname, prop_buf);
		FUNC6(attrname);
		if (ret)
			goto out;
	}

out:
	FUNC4((unsigned long)prop_buf);

	return ret;
}