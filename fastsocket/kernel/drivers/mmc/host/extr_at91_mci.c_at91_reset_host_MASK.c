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
typedef  int u32 ;
struct at91mci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_MCI_CR ; 
 int /*<<< orphan*/  AT91_MCI_DTOR ; 
 int /*<<< orphan*/  AT91_MCI_IDR ; 
 int /*<<< orphan*/  AT91_MCI_IER ; 
 int /*<<< orphan*/  AT91_MCI_IMR ; 
 int AT91_MCI_MCIDIS ; 
 int AT91_MCI_MCIEN ; 
 int /*<<< orphan*/  AT91_MCI_MR ; 
 int /*<<< orphan*/  AT91_MCI_SDCR ; 
 int /*<<< orphan*/  AT91_MCI_SR ; 
 int AT91_MCI_SWRST ; 
 int FUNC0 (struct at91mci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct at91mci_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(struct at91mci_host *host)
{
	unsigned long flags;
	u32 mr;
	u32 sdcr;
	u32 dtor;
	u32 imr;

	FUNC3(flags);
	imr = FUNC0(host, AT91_MCI_IMR);

	FUNC1(host, AT91_MCI_IDR, 0xffffffff);

	/* save current state */
	mr = FUNC0(host, AT91_MCI_MR) & 0x7fff;
	sdcr = FUNC0(host, AT91_MCI_SDCR);
	dtor = FUNC0(host, AT91_MCI_DTOR);

	/* reset the controller */
	FUNC1(host, AT91_MCI_CR, AT91_MCI_MCIDIS | AT91_MCI_SWRST);

	/* restore state */
	FUNC1(host, AT91_MCI_CR, AT91_MCI_MCIEN);
	FUNC1(host, AT91_MCI_MR, mr);
	FUNC1(host, AT91_MCI_SDCR, sdcr);
	FUNC1(host, AT91_MCI_DTOR, dtor);
	FUNC1(host, AT91_MCI_IER, imr);

	/* make sure sdio interrupts will fire */
	FUNC0(host, AT91_MCI_SR);

	FUNC2(flags);
}