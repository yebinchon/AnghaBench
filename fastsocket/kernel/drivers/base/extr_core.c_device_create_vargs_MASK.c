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
typedef  int /*<<< orphan*/  va_list ;
struct device {int /*<<< orphan*/  kobj; int /*<<< orphan*/  release; struct device* parent; struct class* class; int /*<<< orphan*/  devt; } ;
struct class {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct class*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,void*) ; 
 int /*<<< orphan*/  device_create_release ; 
 int FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 struct device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

struct device *FUNC7(struct class *class, struct device *parent,
				   dev_t devt, void *drvdata, const char *fmt,
				   va_list args)
{
	struct device *dev = NULL;
	int retval = -ENODEV;

	if (class == NULL || FUNC1(class))
		goto error;

	dev = FUNC5(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		retval = -ENOMEM;
		goto error;
	}

	dev->devt = devt;
	dev->class = class;
	dev->parent = parent;
	dev->release = device_create_release;
	FUNC2(dev, drvdata);

	retval = FUNC4(&dev->kobj, fmt, args);
	if (retval)
		goto error;

	retval = FUNC3(dev);
	if (retval)
		goto error;

	return dev;

error:
	FUNC6(dev);
	return FUNC0(retval);
}