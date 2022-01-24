#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct imxuart_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct imxuart_platform_data {int /*<<< orphan*/  (* exit ) (struct platform_device*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  membase; } ;
struct imx_port {TYPE_2__ port; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_reg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct imx_port*) ; 
 struct imx_port* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct imxuart_platform_data *pdata;
	struct imx_port *sport = FUNC4(pdev);

	pdata = pdev->dev.platform_data;

	FUNC5(pdev, NULL);

	if (sport) {
		FUNC7(&imx_reg, &sport->port);
		FUNC1(sport->clk);
	}

	FUNC0(sport->clk);

	if (pdata->exit)
		pdata->exit(pdev);

	FUNC2(sport->port.membase);
	FUNC3(sport);

	return 0;
}