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
typedef  int /*<<< orphan*/  u32 ;
struct imxmci_host {int imask; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  pending_events; int /*<<< orphan*/  status_reg; int /*<<< orphan*/  stuck_timeout; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IMXMCI_PEND_IRQ_b ; 
 int /*<<< orphan*/  IMXMCI_PEND_STARTED_b ; 
 int INT_MASK_AUTO_CARD_DETECT ; 
 int INT_MASK_SDIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MMC_REG_INT_MASK ; 
 scalar_t__ MMC_REG_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *devid)
{
	struct imxmci_host *host = devid;
	u32 stat = FUNC2(host->base + MMC_REG_STATUS);
	int handled = 1;

	FUNC5(host->imask | INT_MASK_SDIO | INT_MASK_AUTO_CARD_DETECT,
			host->base + MMC_REG_INT_MASK);

	FUNC1(&host->stuck_timeout, 0);
	host->status_reg = stat;
	FUNC3(IMXMCI_PEND_IRQ_b, &host->pending_events);
	FUNC3(IMXMCI_PEND_STARTED_b, &host->pending_events);
	FUNC4(&host->tasklet);

	return FUNC0(handled);
}