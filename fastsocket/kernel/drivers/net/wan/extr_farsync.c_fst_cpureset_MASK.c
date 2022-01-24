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
struct fst_card_info {scalar_t__ family; scalar_t__ pci_conf; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ CNTRL_9052 ; 
 scalar_t__ CNTRL_9054 ; 
 int /*<<< orphan*/  DBG_ASS ; 
 scalar_t__ FST_FAMILY_TXU ; 
 int /*<<< orphan*/  PCI_INTERRUPT_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static inline void
FUNC6(struct fst_card_info *card)
{
	unsigned char interrupt_line_register;
	unsigned long j = jiffies + 1;
	unsigned int regval;

	if (card->family == FST_FAMILY_TXU) {
		if (FUNC4
		    (card->device, PCI_INTERRUPT_LINE, &interrupt_line_register)) {
			FUNC0(DBG_ASS,
			    "Error in reading interrupt line register\n");
		}
		/*
		 * Assert PLX software reset and Am186 hardware reset
		 * and then deassert the PLX software reset but 186 still in reset
		 */
		FUNC3(0x440f, card->pci_conf + CNTRL_9054 + 2);
		FUNC3(0x040f, card->pci_conf + CNTRL_9054 + 2);
		/*
		 * We are delaying here to allow the 9054 to reset itself
		 */
		j = jiffies + 1;
		while (jiffies < j)
			/* Do nothing */ ;
		FUNC3(0x240f, card->pci_conf + CNTRL_9054 + 2);
		/*
		 * We are delaying here to allow the 9054 to reload its eeprom
		 */
		j = jiffies + 1;
		while (jiffies < j)
			/* Do nothing */ ;
		FUNC3(0x040f, card->pci_conf + CNTRL_9054 + 2);

		if (FUNC5
		    (card->device, PCI_INTERRUPT_LINE, interrupt_line_register)) {
			FUNC0(DBG_ASS,
			    "Error in writing interrupt line register\n");
		}

	} else {
		regval = FUNC1(card->pci_conf + CNTRL_9052);

		FUNC2(regval | 0x40000000, card->pci_conf + CNTRL_9052);
		FUNC2(regval & ~0x40000000, card->pci_conf + CNTRL_9052);
	}
}