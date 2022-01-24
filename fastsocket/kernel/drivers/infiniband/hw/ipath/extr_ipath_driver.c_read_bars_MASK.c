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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct ipath_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_BASE_ADDRESS_0 ; 
 int /*<<< orphan*/  PCI_BASE_ADDRESS_1 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*,char*,int) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct ipath_devdata *dd, struct pci_dev *dev,
			     u32 *bar0, u32 *bar1)
{
	int ret;

	ret = FUNC2(dev, PCI_BASE_ADDRESS_0, bar0);
	if (ret)
		FUNC1(dd, "failed to read bar0 before enable: "
			      "error %d\n", -ret);

	ret = FUNC2(dev, PCI_BASE_ADDRESS_1, bar1);
	if (ret)
		FUNC1(dd, "failed to read bar1 before enable: "
			      "error %d\n", -ret);

	FUNC0("Read bar0 %x bar1 %x\n", *bar0, *bar1);
}