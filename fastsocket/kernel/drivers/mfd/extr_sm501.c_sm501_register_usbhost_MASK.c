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
struct sm501_devdata {int dummy; } ;
struct platform_device {int /*<<< orphan*/ * resource; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct sm501_devdata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sm501_devdata*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct platform_device* FUNC2 (struct sm501_devdata*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sm501_devdata*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (struct sm501_devdata*,struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct sm501_devdata *sm,
				  resource_size_t *mem_avail)
{
	struct platform_device *pdev;

	pdev = FUNC2(sm, "sm501-usb", 3, 0);
	if (!pdev)
		return -ENOMEM;

	FUNC3(sm, &pdev->resource[0], 0x40000, 0x20000);
	FUNC1(sm, &pdev->resource[1], mem_avail, 256*1024);
	FUNC0(sm, &pdev->resource[2]);

	return FUNC4(sm, pdev);
}