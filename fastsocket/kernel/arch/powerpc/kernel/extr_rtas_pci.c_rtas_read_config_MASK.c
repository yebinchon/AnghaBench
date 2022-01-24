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
typedef  int u32 ;
struct pci_dn {int /*<<< orphan*/  node; TYPE_1__* phb; int /*<<< orphan*/  devfn; int /*<<< orphan*/  busno; } ;
struct TYPE_2__ {unsigned long buid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (int) ; 
 int PCIBIOS_BAD_REGISTER_NUMBER ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dn*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ibm_read_pci_config ; 
 int /*<<< orphan*/  read_pci_config ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int,int*,unsigned long,int,...) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct pci_dn *pdn, int where, int size, u32 *val)
{
	int returnval = -1;
	unsigned long buid, addr;
	int ret;

	if (!pdn)
		return PCIBIOS_DEVICE_NOT_FOUND;
	if (!FUNC3(pdn, where))
		return PCIBIOS_BAD_REGISTER_NUMBER;

	addr = FUNC6(pdn->busno, pdn->devfn, where);
	buid = pdn->phb->buid;
	if (buid) {
		ret = FUNC5(ibm_read_pci_config, 4, 2, &returnval,
				addr, FUNC0(buid), FUNC1(buid), size);
	} else {
		ret = FUNC5(read_pci_config, 2, 2, &returnval, addr, size);
	}
	*val = returnval;

	if (ret)
		return PCIBIOS_DEVICE_NOT_FOUND;

	if (returnval == FUNC2(size) &&
	    FUNC4 (pdn->node, NULL))
		return PCIBIOS_DEVICE_NOT_FOUND;

	return PCIBIOS_SUCCESSFUL;
}