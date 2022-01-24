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
struct at91mci_host {int /*<<< orphan*/  mmc; TYPE_2__* request; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int blocks; } ;

/* Variables and functions */
 unsigned int AT91_MCI_BLKE ; 
 unsigned int AT91_MCI_CMDRDY ; 
 unsigned int AT91_MCI_DCRCE ; 
 unsigned int AT91_MCI_DTIP ; 
 unsigned int AT91_MCI_DTOE ; 
 unsigned int AT91_MCI_ENDRX ; 
 unsigned int AT91_MCI_ENDTX ; 
 unsigned int AT91_MCI_ERRORS ; 
 int /*<<< orphan*/  AT91_MCI_IDR ; 
 int /*<<< orphan*/  AT91_MCI_IER ; 
 int /*<<< orphan*/  AT91_MCI_IMR ; 
 unsigned int AT91_MCI_NOTBUSY ; 
 unsigned int AT91_MCI_OVRE ; 
 unsigned int AT91_MCI_RCRCE ; 
 unsigned int AT91_MCI_RDIRE ; 
 unsigned int AT91_MCI_RENDE ; 
 unsigned int AT91_MCI_RINDE ; 
 unsigned int AT91_MCI_RTOE ; 
 unsigned int AT91_MCI_RXBUFF ; 
 unsigned int AT91_MCI_RXRDY ; 
 unsigned int AT91_MCI_SDIOIRQA ; 
 unsigned int AT91_MCI_SDIOIRQB ; 
 int /*<<< orphan*/  AT91_MCI_SR ; 
 unsigned int AT91_MCI_TXBUFE ; 
 unsigned int AT91_MCI_TXRDY ; 
 unsigned int AT91_MCI_UNRE ; 
 int /*<<< orphan*/  ATMEL_PDC_PTCR ; 
 unsigned int ATMEL_PDC_RXTDIS ; 
 unsigned int ATMEL_PDC_TXTDIS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct at91mci_host*,unsigned int) ; 
 int FUNC1 (struct at91mci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct at91mci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct at91mci_host*) ; 
 unsigned int FUNC4 (struct at91mci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct at91mci_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct at91mci_host*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *devid)
{
	struct at91mci_host *host = devid;
	int completed = 0;
	unsigned int int_status, int_mask;

	int_status = FUNC4(host, AT91_MCI_SR);
	int_mask = FUNC4(host, AT91_MCI_IMR);

	FUNC8("MCI irq: status = %08X, %08X, %08X\n", int_status, int_mask,
		int_status & int_mask);

	int_status = int_status & int_mask;

	if (int_status & AT91_MCI_ERRORS) {
		completed = 1;

		if (int_status & AT91_MCI_UNRE)
			FUNC8("MMC: Underrun error\n");
		if (int_status & AT91_MCI_OVRE)
			FUNC8("MMC: Overrun error\n");
		if (int_status & AT91_MCI_DTOE)
			FUNC8("MMC: Data timeout\n");
		if (int_status & AT91_MCI_DCRCE)
			FUNC8("MMC: CRC error in data\n");
		if (int_status & AT91_MCI_RTOE)
			FUNC8("MMC: Response timeout\n");
		if (int_status & AT91_MCI_RENDE)
			FUNC8("MMC: Response end bit error\n");
		if (int_status & AT91_MCI_RCRCE)
			FUNC8("MMC: Response CRC error\n");
		if (int_status & AT91_MCI_RDIRE)
			FUNC8("MMC: Response direction error\n");
		if (int_status & AT91_MCI_RINDE)
			FUNC8("MMC: Response index error\n");
	} else {
		/* Only continue processing if no errors */

		if (int_status & AT91_MCI_TXBUFE) {
			FUNC8("TX buffer empty\n");
			FUNC2(host);
		}

		if (int_status & AT91_MCI_ENDRX) {
			FUNC8("ENDRX\n");
			FUNC3(host);
		}

		if (int_status & AT91_MCI_RXBUFF) {
			FUNC8("RX buffer full\n");
			FUNC6(host, ATMEL_PDC_PTCR, ATMEL_PDC_RXTDIS | ATMEL_PDC_TXTDIS);
			FUNC6(host, AT91_MCI_IDR, AT91_MCI_RXBUFF | AT91_MCI_ENDRX);
			completed = 1;
		}

		if (int_status & AT91_MCI_ENDTX)
			FUNC8("Transmit has ended\n");

		if (int_status & AT91_MCI_NOTBUSY) {
			FUNC8("Card is ready\n");
			FUNC5(host);
			completed = 1;
		}

		if (int_status & AT91_MCI_DTIP)
			FUNC8("Data transfer in progress\n");

		if (int_status & AT91_MCI_BLKE) {
			FUNC8("Block transfer has ended\n");
			if (host->request->data && host->request->data->blocks > 1) {
				/* multi block write : complete multi write
				 * command and send stop */
				completed = 1;
			} else {
				FUNC6(host, AT91_MCI_IER, AT91_MCI_NOTBUSY);
			}
		}

		if (int_status & AT91_MCI_SDIOIRQA)
			FUNC7(host->mmc);

		if (int_status & AT91_MCI_SDIOIRQB)
			FUNC7(host->mmc);

		if (int_status & AT91_MCI_TXRDY)
			FUNC8("Ready to transmit\n");

		if (int_status & AT91_MCI_RXRDY)
			FUNC8("Ready to receive\n");

		if (int_status & AT91_MCI_CMDRDY) {
			FUNC8("Command ready\n");
			completed = FUNC1(host);
		}
	}

	if (completed) {
		FUNC8("Completed command\n");
		FUNC6(host, AT91_MCI_IDR, 0xffffffff & ~(AT91_MCI_SDIOIRQA | AT91_MCI_SDIOIRQB));
		FUNC0(host, int_status);
	} else
		FUNC6(host, AT91_MCI_IDR, int_status & ~(AT91_MCI_SDIOIRQA | AT91_MCI_SDIOIRQB));

	return IRQ_HANDLED;
}