#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct at91mci_host {TYPE_1__* board; } ;
struct TYPE_2__ {unsigned int slot_b; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_MCI_CR ; 
 unsigned int AT91_MCI_DTOCYC ; 
 unsigned int AT91_MCI_DTOMUL_1M ; 
 int /*<<< orphan*/  AT91_MCI_DTOR ; 
 int /*<<< orphan*/  AT91_MCI_IDR ; 
 unsigned int AT91_MCI_MCIEN ; 
 int /*<<< orphan*/  AT91_MCI_MR ; 
 int AT91_MCI_PDCMODE ; 
 unsigned int AT91_MCI_RDPROOF ; 
 int /*<<< orphan*/  AT91_MCI_SDCR ; 
 unsigned int AT91_MCI_WRPROOF ; 
 int /*<<< orphan*/  FUNC0 (struct at91mci_host*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct at91mci_host *host)
{
	unsigned int mr;

	FUNC0(host, AT91_MCI_CR, AT91_MCI_MCIEN);
	FUNC0(host, AT91_MCI_IDR, 0xffffffff);
	FUNC0(host, AT91_MCI_DTOR, AT91_MCI_DTOMUL_1M | AT91_MCI_DTOCYC);
	mr = AT91_MCI_PDCMODE | 0x34a;

	if (FUNC1() || FUNC2())
		mr |= AT91_MCI_RDPROOF | AT91_MCI_WRPROOF;

	FUNC0(host, AT91_MCI_MR, mr);

	/* use Slot A or B (only one at same time) */
	FUNC0(host, AT91_MCI_SDCR, host->board->slot_b);
}