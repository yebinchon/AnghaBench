#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dma; } ;
typedef  TYPE_1__ Adapter ;

/* Variables and functions */
 int /*<<< orphan*/  ICB_DIAG_FULL ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  wd7000_intr ; 

__attribute__((used)) static int FUNC9(Adapter * host)
{
	if (FUNC5(host) == -1)
		return 0;


	if (FUNC4(host->irq, wd7000_intr, IRQF_DISABLED, "wd7000", host)) {
		FUNC2("wd7000_init: can't get IRQ %d.\n", host->irq);
		return (0);
	}
	if (FUNC3(host->dma, "wd7000")) {
		FUNC2("wd7000_init: can't get DMA channel %d.\n", host->dma);
		FUNC1(host->irq, host);
		return (0);
	}
	FUNC7(host);
	FUNC8(host);

	if (!FUNC6(host, ICB_DIAG_FULL)) {
		FUNC0(host->dma);
		FUNC1(host->irq, NULL);
		return (0);
	}

	return (1);
}