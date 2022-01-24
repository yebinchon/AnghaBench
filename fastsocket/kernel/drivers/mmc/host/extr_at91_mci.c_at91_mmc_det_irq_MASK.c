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
struct at91mci_host {int present; int /*<<< orphan*/  mmc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AT91_MCI_SDCBUS ; 
 int /*<<< orphan*/  AT91_MCI_SDCR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct at91mci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct at91mci_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *_host)
{
	struct at91mci_host *host = _host;
	int present = !FUNC2(FUNC3(irq));

	/*
	 * we expect this irq on both insert and remove,
	 * and use a short delay to debounce.
	 */
	if (present != host->present) {
		host->present = present;
		FUNC7("%s: card %s\n", FUNC5(host->mmc),
			present ? "insert" : "remove");
		if (!present) {
			FUNC7("****** Resetting SD-card bus width ******\n");
			FUNC1(host, AT91_MCI_SDCR, FUNC0(host, AT91_MCI_SDCR) & ~AT91_MCI_SDCBUS);
		}
		FUNC4(host->mmc, FUNC6(100));
	}
	return IRQ_HANDLED;
}