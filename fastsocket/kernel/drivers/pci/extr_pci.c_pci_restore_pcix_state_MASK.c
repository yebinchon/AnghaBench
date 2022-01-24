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
 int /*<<< orphan*/  PCI_CAP_ID_PCIX ; 
 scalar_t__ PCI_X_CMD ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct pci_cap_saved_state* FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	int i = 0, pos;
	struct pci_cap_saved_state *save_state;
	u16 *cap;

	save_state = FUNC1(dev, PCI_CAP_ID_PCIX);
	pos = FUNC0(dev, PCI_CAP_ID_PCIX);
	if (!save_state || pos <= 0)
		return;
	cap = (u16 *)&save_state->cap.data[0];

	FUNC2(dev, pos + PCI_X_CMD, cap[i++]);
}