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
struct sh_timer_config {int /*<<< orphan*/  clk; } ;
struct sh_mtu2_priv {int rate; int periodic; int /*<<< orphan*/  clk; TYPE_1__* pdev; } ;
struct TYPE_4__ {struct sh_timer_config* platform_data; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  TCNT ; 
 int /*<<< orphan*/  TCR ; 
 int /*<<< orphan*/  TGR ; 
 int /*<<< orphan*/  TIER ; 
 int /*<<< orphan*/  TIOR ; 
 int /*<<< orphan*/  TMDR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_mtu2_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_mtu2_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct sh_mtu2_priv *p)
{
	struct sh_timer_config *cfg = p->pdev->dev.platform_data;
	int ret;

	/* enable clock */
	ret = FUNC0(p->clk);
	if (ret) {
		FUNC2("sh_mtu2: cannot enable clock \"%s\"\n", cfg->clk);
		return ret;
	}

	/* make sure channel is disabled */
	FUNC3(p, 0);

	p->rate = FUNC1(p->clk) / 64;
	p->periodic = (p->rate + HZ/2) / HZ;

	/* "Periodic Counter Operation" */
	FUNC4(p, TCR, 0x23); /* TGRA clear, divide clock by 64 */
	FUNC4(p, TIOR, 0);
	FUNC4(p, TGR, p->periodic);
	FUNC4(p, TCNT, 0);
	FUNC4(p, TMDR, 0);
	FUNC4(p, TIER, 0x01);

	/* enable channel */
	FUNC3(p, 1);

	return 0;
}