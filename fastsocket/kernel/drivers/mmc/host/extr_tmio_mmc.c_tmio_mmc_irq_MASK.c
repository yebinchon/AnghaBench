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
struct tmio_mmc_host {int /*<<< orphan*/  mmc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_IRQ_MASK ; 
 int /*<<< orphan*/  CTL_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int TMIO_MASK_CMD ; 
 unsigned int TMIO_MASK_IRQ ; 
 unsigned int TMIO_STAT_CARD_INSERT ; 
 unsigned int TMIO_STAT_CARD_REMOVE ; 
 unsigned int TMIO_STAT_DATAEND ; 
 unsigned int TMIO_STAT_RXRDY ; 
 unsigned int TMIO_STAT_TXRQ ; 
 int /*<<< orphan*/  FUNC0 (struct tmio_mmc_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct tmio_mmc_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tmio_mmc_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct tmio_mmc_host*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *devid)
{
	struct tmio_mmc_host *host = devid;
	unsigned int ireg, irq_mask, status;

	FUNC3("MMC IRQ begin\n");

	status = FUNC5(host, CTL_STATUS);
	irq_mask = FUNC5(host, CTL_IRQ_MASK);
	ireg = status & TMIO_MASK_IRQ & ~irq_mask;

	FUNC4(status);
	FUNC4(ireg);

	if (!ireg) {
		FUNC1(host, status & ~irq_mask);

		FUNC3("tmio_mmc: Spurious irq, disabling! "
			"0x%08x 0x%08x 0x%08x\n", status, irq_mask, ireg);
		FUNC4(status);

		goto out;
	}

	while (ireg) {
		/* Card insert / remove attempts */
		if (ireg & (TMIO_STAT_CARD_INSERT | TMIO_STAT_CARD_REMOVE)) {
			FUNC0(host, TMIO_STAT_CARD_INSERT |
				TMIO_STAT_CARD_REMOVE);
			FUNC2(host->mmc, 0);
		}

		/* CRC and other errors */
/*		if (ireg & TMIO_STAT_ERR_IRQ)
 *			handled |= tmio_error_irq(host, irq, stat);
 */

		/* Command completion */
		if (ireg & TMIO_MASK_CMD) {
			FUNC0(host, TMIO_MASK_CMD);
			FUNC6(host, status);
		}

		/* Data transfer */
		if (ireg & (TMIO_STAT_RXRDY | TMIO_STAT_TXRQ)) {
			FUNC0(host, TMIO_STAT_RXRDY | TMIO_STAT_TXRQ);
			FUNC8(host);
		}

		/* Data transfer completion */
		if (ireg & TMIO_STAT_DATAEND) {
			FUNC0(host, TMIO_STAT_DATAEND);
			FUNC7(host);
		}

		/* Check status - keep going until we've handled it all */
		status = FUNC5(host, CTL_STATUS);
		irq_mask = FUNC5(host, CTL_IRQ_MASK);
		ireg = status & TMIO_MASK_IRQ & ~irq_mask;

		FUNC3("Status at end of loop: %08x\n", status);
		FUNC4(status);
	}
	FUNC3("MMC IRQ end\n");

out:
	return IRQ_HANDLED;
}