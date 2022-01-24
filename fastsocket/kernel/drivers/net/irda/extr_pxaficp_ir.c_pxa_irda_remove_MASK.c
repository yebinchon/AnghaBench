#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  head; } ;
struct TYPE_5__ {int /*<<< orphan*/  head; } ;
struct pxa_irda {int /*<<< orphan*/  sir_clk; int /*<<< orphan*/  fir_clk; TYPE_3__ rx_buff; TYPE_2__ tx_buff; int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* shutdown ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  gpio_pwdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  FICP ; 
 int /*<<< orphan*/  STUART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct pxa_irda* FUNC6 (struct net_device*) ; 
 struct net_device* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *_dev)
{
	struct net_device *dev = FUNC7(_dev);

	if (dev) {
		struct pxa_irda *si = FUNC6(dev);
		FUNC10(dev);
		if (FUNC4(si->pdata->gpio_pwdown))
			FUNC3(si->pdata->gpio_pwdown);
		if (si->pdata->shutdown)
			si->pdata->shutdown(si->dev);
		FUNC5(si->tx_buff.head);
		FUNC5(si->rx_buff.head);
		FUNC1(si->fir_clk);
		FUNC1(si->sir_clk);
		FUNC2(dev);
	}

	FUNC8(FUNC0(STUART), 0x24);
	FUNC8(FUNC0(FICP), 0x1c);

	return 0;
}