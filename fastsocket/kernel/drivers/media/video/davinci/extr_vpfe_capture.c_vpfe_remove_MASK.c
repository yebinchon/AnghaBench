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
struct vpfe_device {int /*<<< orphan*/  ccdc_addr; int /*<<< orphan*/  video_dev; int /*<<< orphan*/  v4l2_dev; struct vpfe_device* sd; int /*<<< orphan*/  ccdc_irq0; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 struct vpfe_device* ccdc_cfg ; 
 int /*<<< orphan*/  ccdc_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct vpfe_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vpfe_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct vpfe_device* FUNC5 (struct platform_device*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vpfe_device*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct vpfe_device *vpfe_dev = FUNC5(pdev);
	struct resource *res;

	FUNC9(pdev->dev.driver, "vpfe_remove\n");

	FUNC0(vpfe_dev->ccdc_irq0, vpfe_dev);
	FUNC2(vpfe_dev->sd);
	FUNC8(&vpfe_dev->v4l2_dev);
	FUNC10(vpfe_dev->video_dev);
	FUNC3(&ccdc_lock);
	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	FUNC7(res->start, res->end - res->start + 1);
	FUNC1(ccdc_cfg->ccdc_addr);
	FUNC4(&ccdc_lock);
	FUNC11(vpfe_dev);
	FUNC2(vpfe_dev);
	FUNC2(ccdc_cfg);
	return 0;
}