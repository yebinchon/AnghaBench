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
struct fst_card_info {scalar_t__ family; int /*<<< orphan*/  ctlmem; scalar_t__ pci_conf; int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 scalar_t__ CNTRL_9054 ; 
 scalar_t__ FST_FAMILY_TXU ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct fst_card_info *card)
{
	if (card->family == FST_FAMILY_TXU) {
		/*
		 * Force posted writes to complete
		 */
		(void) FUNC1(card->mem);

		/*
		 * Release LRESET DO = 1
		 * Then release Local Hold, DO = 1
		 */
		FUNC0(0x040e, card->pci_conf + CNTRL_9054 + 2);
		FUNC0(0x040f, card->pci_conf + CNTRL_9054 + 2);
	} else {
		(void) FUNC1(card->ctlmem);
	}
}