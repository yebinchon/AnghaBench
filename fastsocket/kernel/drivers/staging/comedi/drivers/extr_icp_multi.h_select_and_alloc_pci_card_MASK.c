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
 struct pcilst_struct* FUNC0 (unsigned short,unsigned short) ; 
 int FUNC1 (unsigned short,unsigned short,unsigned short,unsigned short,struct pcilst_struct**) ; 
 int FUNC2 (struct pcilst_struct*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static struct pcilst_struct *FUNC4(unsigned short vendor_id,
						       unsigned short device_id,
						       unsigned short pci_bus,
						       unsigned short pci_slot)
{
	struct pcilst_struct *card;
	int err;

	if ((pci_bus < 1) & (pci_slot < 1)) {	/* use autodetection */

		card = FUNC0(vendor_id, device_id);
		if (card == NULL) {
			FUNC3(" - Unused card not found in system!\n");
			return NULL;
		}
	} else {
		switch (FUNC1(vendor_id, device_id,
						       pci_bus, pci_slot,
						       &card)) {
		case 1:
			FUNC3
			    (" - Card not found on requested position b:s %d:%d!\n",
			     pci_bus, pci_slot);
			return NULL;
		case 2:
			FUNC3
			    (" - Card on requested position is used b:s %d:%d!\n",
			     pci_bus, pci_slot);
			return NULL;
		}
	}

	err = FUNC2(card);
	if (err != 0) {
		if (err > 0)
			FUNC3(" - Can't allocate card!\n");
		/* else: error already printed. */
		return NULL;
	}

	return card;
}