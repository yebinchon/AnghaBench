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
struct pci_dn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEH_PCI_REGS_LOG_LEN ; 
 int /*<<< orphan*/  EEH_THAW_MMIO ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dn*) ; 
 size_t FUNC1 (struct pci_dn*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__* pci_regs_buf ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dn*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dn*,int,scalar_t__*,size_t) ; 

void FUNC5(struct pci_dn *pdn, int severity)
{
	size_t loglen = 0;
	pci_regs_buf[0] = 0;

	FUNC3(pdn, EEH_THAW_MMIO);
	FUNC2(pdn);
	FUNC0(pdn);
	loglen = FUNC1(pdn, pci_regs_buf, EEH_PCI_REGS_LOG_LEN);

	FUNC4(pdn, severity, pci_regs_buf, loglen);
}