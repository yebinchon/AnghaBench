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
typedef  int u8 ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int PCI_CAP_LIST_ID ; 
 scalar_t__ PCI_CAP_LIST_NEXT ; 
 int /*<<< orphan*/  FUNC0 (struct pci_bus*,unsigned int,int,int*) ; 

__attribute__((used)) static int FUNC1(struct pci_bus *bus, unsigned int devfn,
				   u8 pos, int cap, int *ttl)
{
	u8 id;

	while ((*ttl)--) {
		FUNC0(bus, devfn, pos, &pos);
		if (pos < 0x40)
			break;
		pos &= ~3;
		FUNC0(bus, devfn, pos + PCI_CAP_LIST_ID,
					 &id);
		if (id == 0xff)
			break;
		if (id == cap)
			return pos;
		pos += PCI_CAP_LIST_NEXT;
	}
	return 0;
}