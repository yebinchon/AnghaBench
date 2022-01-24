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
struct sh_tmu_priv {int rate; int /*<<< orphan*/  clk; TYPE_2__* pdev; } ;
struct sh_timer_config {int /*<<< orphan*/  clk; } ;
struct TYPE_3__ {struct sh_timer_config* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCNT ; 
 int /*<<< orphan*/  TCOR ; 
 int /*<<< orphan*/  TCR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_tmu_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_tmu_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct sh_tmu_priv *p)
{
	struct sh_timer_config *cfg = p->pdev->dev.platform_data;
	int ret;

	/* enable clock */
	ret = FUNC0(p->clk);
	if (ret) {
		FUNC2("sh_tmu: cannot enable clock \"%s\"\n", cfg->clk);
		return ret;
	}

	/* make sure channel is disabled */
	FUNC3(p, 0);

	/* maximum timeout */
	FUNC4(p, TCOR, 0xffffffff);
	FUNC4(p, TCNT, 0xffffffff);

	/* configure channel to parent clock / 4, irq off */
	p->rate = FUNC1(p->clk) / 4;
	FUNC4(p, TCR, 0x0000);

	/* enable channel */
	FUNC3(p, 1);

	return 0;
}