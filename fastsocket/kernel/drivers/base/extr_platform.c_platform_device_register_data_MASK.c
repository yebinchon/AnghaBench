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
struct TYPE_2__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct platform_device* FUNC0 (int) ; 
 int FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*,void const*,size_t) ; 
 struct platform_device* FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 

struct platform_device *FUNC5(
		struct device *parent,
		const char *name, int id,
		const void *data, size_t size)
{
	struct platform_device *pdev;
	int retval;

	pdev = FUNC3(name, id);
	if (!pdev) {
		retval = -ENOMEM;
		goto error;
	}

	pdev->dev.parent = parent;

	if (size) {
		retval = FUNC2(pdev, data, size);
		if (retval)
			goto error;
	}

	retval = FUNC1(pdev);
	if (retval)
		goto error;

	return pdev;

error:
	FUNC4(pdev);
	return FUNC0(retval);
}