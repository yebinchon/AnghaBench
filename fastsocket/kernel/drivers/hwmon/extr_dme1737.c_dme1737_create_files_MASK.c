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
struct dme1737_data {scalar_t__ type; int has_fan; int has_pwm; int config; int /*<<< orphan*/ * pwm_config; int /*<<< orphan*/  client; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct TYPE_2__ {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 TYPE_1__ dev_attr_name ; 
 struct dme1737_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 scalar_t__ dme1737 ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * dme1737_fan_group ; 
 int /*<<< orphan*/  dme1737_group ; 
 int /*<<< orphan*/  dme1737_misc_group ; 
 int /*<<< orphan*/ ** dme1737_pwm_chmod_attr ; 
 int /*<<< orphan*/ * dme1737_pwm_chmod_group ; 
 int /*<<< orphan*/ * dme1737_pwm_group ; 
 int /*<<< orphan*/ ** dme1737_pwm_misc_attr ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  dme1737_vid_group ; 
 int /*<<< orphan*/  dme1737_zone_chmod_group ; 
 scalar_t__ sch5027 ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct dme1737_data *data = FUNC2(dev);
	int err, ix;

	/* Create a name attribute for ISA devices */
	if (!data->client &&
	    (err = FUNC7(&dev->kobj, &dev_attr_name.attr))) {
		goto exit;
	}

	/* Create standard sysfs attributes */
	if ((err = FUNC8(&dev->kobj, &dme1737_group))) {
		goto exit_remove;
	}

	/* Create misc sysfs attributes */
	if ((data->type != sch5027) &&
	    (err = FUNC8(&dev->kobj,
				      &dme1737_misc_group))) {
		goto exit_remove;
	}

	/* Create VID-related sysfs attributes */
	if ((data->type == dme1737) &&
	    (err = FUNC8(&dev->kobj,
				      &dme1737_vid_group))) {
		goto exit_remove;
	}

	/* Create fan sysfs attributes */
	for (ix = 0; ix < FUNC0(dme1737_fan_group); ix++) {
		if (data->has_fan & (1 << ix)) {
			if ((err = FUNC8(&dev->kobj,
						&dme1737_fan_group[ix]))) {
				goto exit_remove;
			}
		}
	}

	/* Create PWM sysfs attributes */
	for (ix = 0; ix < FUNC0(dme1737_pwm_group); ix++) {
		if (data->has_pwm & (1 << ix)) {
			if ((err = FUNC8(&dev->kobj,
						&dme1737_pwm_group[ix]))) {
				goto exit_remove;
			}
			if (data->type != sch5027 && ix < 3 &&
			    (err = FUNC7(&dev->kobj,
						dme1737_pwm_misc_attr[ix]))) {
				goto exit_remove;
			}
		}
	}

	/* Inform if the device is locked. Otherwise change the permissions of
	 * selected attributes from read-only to read-writeable. */
	if (data->config & 0x02) {
		FUNC3(dev, "Device is locked. Some attributes "
			 "will be read-only.\n");
	} else {
		/* Change permissions of zone sysfs attributes */
		FUNC5(dev, &dme1737_zone_chmod_group,
				    S_IRUGO | S_IWUSR);

		/* Change permissions of misc sysfs attributes */
		if (data->type != sch5027) {
			FUNC5(dev, &dme1737_misc_group,
					    S_IRUGO | S_IWUSR);
		}

		/* Change permissions of PWM sysfs attributes */
		for (ix = 0; ix < FUNC0(dme1737_pwm_chmod_group); ix++) {
			if (data->has_pwm & (1 << ix)) {
				FUNC5(dev,
						&dme1737_pwm_chmod_group[ix],
						S_IRUGO | S_IWUSR);
				if (data->type != sch5027 && ix < 3) {
					FUNC4(dev,
						dme1737_pwm_misc_attr[ix],
						S_IRUGO | S_IWUSR);
				}
			}
		}

		/* Change permissions of pwm[1-3] if in manual mode */
		for (ix = 0; ix < 3; ix++) {
			if ((data->has_pwm & (1 << ix)) &&
			    (FUNC1(data->pwm_config[ix]) == 1)) {
				FUNC4(dev,
						dme1737_pwm_chmod_attr[ix],
						S_IRUGO | S_IWUSR);
			}
		}
	}

	return 0;

exit_remove:
	FUNC6(dev);
exit:
	return err;
}