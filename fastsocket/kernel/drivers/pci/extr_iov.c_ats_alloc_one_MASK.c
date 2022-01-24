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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {struct pci_ats* ats; } ;
struct pci_ats {int pos; int stu; scalar_t__ qdep; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PCI_ATS_CAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCI_ATS_MAX_QDEP ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ATS ; 
 struct pci_ats* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev, int ps)
{
	int pos;
	u16 cap;
	struct pci_ats *ats;

	pos = FUNC2(dev, PCI_EXT_CAP_ID_ATS);
	if (!pos)
		return -ENODEV;

	ats = FUNC1(sizeof(*ats), GFP_KERNEL);
	if (!ats)
		return -ENOMEM;

	ats->pos = pos;
	ats->stu = ps;
	FUNC3(dev, pos + PCI_ATS_CAP, &cap);
	ats->qdep = FUNC0(cap) ? FUNC0(cap) :
					    PCI_ATS_MAX_QDEP;
	dev->ats = ats;

	return 0;
}