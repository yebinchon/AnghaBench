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
struct resource {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef  enum pci_bar_type { ____Placeholder_pci_bar_type } pci_bar_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,struct resource*,int) ; 
 int FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  pci_sriov_enabled ; 
 int FUNC2 (struct resource*) ; 

int FUNC3(struct pci_dev *dev, int resno)
{
	struct resource tmp;
	enum pci_bar_type type;
	int reg = FUNC1(dev, resno, &type);

	if (!pci_sriov_enabled)
		return 0;

	if (!reg)
		return 0;

	 FUNC0(dev, type, &tmp, reg);
	return FUNC2(&tmp);
}