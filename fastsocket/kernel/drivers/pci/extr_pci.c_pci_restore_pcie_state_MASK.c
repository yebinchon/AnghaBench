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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;
struct pci_cap_saved_state {TYPE_1__ cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CAP_ID_EXP ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL2 ; 
 int /*<<< orphan*/  PCI_EXP_LNKCTL ; 
 int /*<<< orphan*/  PCI_EXP_LNKCTL2 ; 
 int /*<<< orphan*/  PCI_EXP_RTCTL ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL2 ; 
 struct pci_cap_saved_state* FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	int i = 0;
	struct pci_cap_saved_state *save_state;
	u16 *cap;

	save_state = FUNC0(dev, PCI_CAP_ID_EXP);
	if (!save_state)
		return;

	cap = (u16 *)&save_state->cap.data[0];
	FUNC1(dev, PCI_EXP_DEVCTL, cap[i++]);
	FUNC1(dev, PCI_EXP_LNKCTL, cap[i++]);
	FUNC1(dev, PCI_EXP_SLTCTL, cap[i++]);
	FUNC1(dev, PCI_EXP_RTCTL, cap[i++]);
	FUNC1(dev, PCI_EXP_DEVCTL2, cap[i++]);
	FUNC1(dev, PCI_EXP_LNKCTL2, cap[i++]);
	FUNC1(dev, PCI_EXP_SLTCTL2, cap[i++]);
}