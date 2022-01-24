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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcf50633_subdev_pdata {struct pcf50633* pcf; } ;
struct pcf50633 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct pcf50633_subdev_pdata* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct pcf50633_subdev_pdata*,int) ; 
 struct platform_device* FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 

__attribute__((used)) static void
FUNC6(struct pcf50633 *pcf, const char *name,
						struct platform_device **pdev)
{
	struct pcf50633_subdev_pdata *subdev_pdata;
	int ret;

	*pdev = FUNC4(name, -1);
	if (!*pdev) {
		FUNC0(pcf->dev, "Falied to allocate %s\n", name);
		return;
	}

	subdev_pdata = FUNC1(sizeof(*subdev_pdata), GFP_KERNEL);
	if (!subdev_pdata) {
		FUNC0(pcf->dev, "Error allocating subdev pdata\n");
		FUNC5(*pdev);
	}

	subdev_pdata->pcf = pcf;
	FUNC3(*pdev, subdev_pdata, sizeof(*subdev_pdata));

	(*pdev)->dev.parent = pcf->dev;

	ret = FUNC2(*pdev);
	if (ret) {
		FUNC0(pcf->dev, "Failed to register %s: %d\n", name, ret);
		FUNC5(*pdev);
		*pdev = NULL;
	}
}