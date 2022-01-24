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
struct pci_dev {TYPE_1__* ats; scalar_t__ is_virtfn; } ;
struct TYPE_2__ {int qdep; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ PCI_ATS_CAP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PCI_ATS_MAX_QDEP ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ATS ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 

int FUNC3(struct pci_dev *dev)
{
	int pos;
	u16 cap;

	if (dev->is_virtfn)
		return 0;

	if (dev->ats)
		return dev->ats->qdep;

	pos = FUNC1(dev, PCI_EXT_CAP_ID_ATS);
	if (!pos)
		return -ENODEV;

	FUNC2(dev, pos + PCI_ATS_CAP, &cap);

	return FUNC0(cap) ? FUNC0(cap) :
				       PCI_ATS_MAX_QDEP;
}