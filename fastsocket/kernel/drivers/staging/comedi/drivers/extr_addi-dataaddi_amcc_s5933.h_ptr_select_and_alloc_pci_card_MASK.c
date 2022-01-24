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
struct pcilst_struct {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned short,unsigned short,unsigned short,unsigned short,struct pcilst_struct**) ; 
 scalar_t__ FUNC1 (struct pcilst_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct pcilst_struct* FUNC3 (unsigned short,unsigned short) ; 

struct pcilst_struct *FUNC4(unsigned short vendor_id,
						    unsigned short device_id,
						    unsigned short pci_bus,
						    unsigned short pci_slot,
						    int i_Master)
{
	struct pcilst_struct *card;

	if ((pci_bus < 1) & (pci_slot < 1)) {
		/* use autodetection */
		card = FUNC3(vendor_id, device_id);
		if (card == NULL) {
			FUNC2(" - Unused card not found in system!\n");
			return NULL;
		}
	} else {
		switch (FUNC0(vendor_id, device_id,
							 pci_bus, pci_slot,
							 &card)) {
		case 1:
			FUNC2(" - Card not found on requested position b:s %d:%d!\n",
				  pci_bus, pci_slot);
			return NULL;
		case 2:
			FUNC2(" - Card on requested position is used b:s %d:%d!\n",
				  pci_bus, pci_slot);
			return NULL;
		}
	}

	if (FUNC1(card, i_Master) != 0) {
		FUNC2(" - Can't allocate card!\n");
		return NULL;

	}

	return card;
}