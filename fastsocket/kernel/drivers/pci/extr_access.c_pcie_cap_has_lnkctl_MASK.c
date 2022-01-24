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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int PCI_EXP_TYPE_ENDPOINT ; 
 int PCI_EXP_TYPE_LEG_END ; 
 int PCI_EXP_TYPE_ROOT_PORT ; 
 int FUNC0 (struct pci_dev const*) ; 
 int FUNC1 (struct pci_dev const*) ; 

__attribute__((used)) static inline bool FUNC2(const struct pci_dev *dev)
{
	int type = FUNC0(dev);

	return FUNC1(dev) > 1 ||
	       type == PCI_EXP_TYPE_ROOT_PORT ||
	       type == PCI_EXP_TYPE_ENDPOINT ||
	       type == PCI_EXP_TYPE_LEG_END;
}