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
struct TYPE_2__ {struct nomadik_nand_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct nomadik_nand_platform_data {int /*<<< orphan*/  (* exit ) () ;} ;
struct nomadik_nand_host {int /*<<< orphan*/  addr_va; int /*<<< orphan*/  data_va; int /*<<< orphan*/  cmd_va; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nomadik_nand_host*) ; 
 struct nomadik_nand_host* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct nomadik_nand_host *host = FUNC2(pdev);
	struct nomadik_nand_platform_data *pdata = pdev->dev.platform_data;

	if (pdata->exit)
		pdata->exit();

	if (host) {
		FUNC0(host->cmd_va);
		FUNC0(host->data_va);
		FUNC0(host->addr_va);
		FUNC1(host);
	}
	return 0;
}