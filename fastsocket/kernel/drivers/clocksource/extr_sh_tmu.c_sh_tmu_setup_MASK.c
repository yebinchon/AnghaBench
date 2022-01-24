#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int irq; int flags; struct sh_tmu_priv* dev_id; int /*<<< orphan*/  handler; int /*<<< orphan*/  name; } ;
struct sh_tmu_priv {int /*<<< orphan*/ * mapbase; int /*<<< orphan*/  clk; struct platform_device* pdev; TYPE_1__ irqaction; } ;
struct sh_timer_config {int /*<<< orphan*/  clocksource_rating; int /*<<< orphan*/  clockevent_rating; int /*<<< orphan*/  name; int /*<<< orphan*/  clk; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_5__ {struct sh_timer_config* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_DISABLED ; 
 int IRQF_IRQPOLL ; 
 int IRQF_TIMER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sh_tmu_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct sh_tmu_priv*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 int /*<<< orphan*/  sh_tmu_interrupt ; 
 int FUNC12 (struct sh_tmu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct sh_tmu_priv *p, struct platform_device *pdev)
{
	struct sh_timer_config *cfg = pdev->dev.platform_data;
	struct resource *res;
	int irq, ret;
	ret = -ENXIO;

	FUNC6(p, 0, sizeof(*p));
	p->pdev = pdev;

	if (!cfg) {
		FUNC3(&p->pdev->dev, "missing platform data\n");
		goto err0;
	}

	FUNC9(pdev, p);

	res = FUNC8(p->pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC3(&p->pdev->dev, "failed to get I/O memory\n");
		goto err0;
	}

	irq = FUNC7(p->pdev, 0);
	if (irq < 0) {
		FUNC3(&p->pdev->dev, "failed to get irq\n");
		goto err0;
	}

	/* map memory, let mapbase point to our channel */
	p->mapbase = FUNC4(res->start, FUNC11(res));
	if (p->mapbase == NULL) {
		FUNC10("sh_tmu: failed to remap I/O memory\n");
		goto err0;
	}

	/* setup data for setup_irq() (too early for request_irq()) */
	p->irqaction.name = cfg->name;
	p->irqaction.handler = sh_tmu_interrupt;
	p->irqaction.dev_id = p;
	p->irqaction.irq = irq;
	p->irqaction.flags = IRQF_DISABLED | IRQF_TIMER | IRQF_IRQPOLL;

	/* get hold of clock */
	p->clk = FUNC2(&p->pdev->dev, cfg->clk);
	if (FUNC0(p->clk)) {
		FUNC10("sh_tmu: cannot get clock \"%s\"\n", cfg->clk);
		ret = FUNC1(p->clk);
		goto err1;
	}

	return FUNC12(p, cfg->name,
			       cfg->clockevent_rating,
			       cfg->clocksource_rating);
 err1:
	FUNC5(p->mapbase);
 err0:
	return ret;
}