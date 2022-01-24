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
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_2__ {scalar_t__ md_template; } ;
struct netxen_adapter {TYPE_1__ mdump; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  bin_attr_crb ; 
 int /*<<< orphan*/  bin_attr_dimm ; 
 int /*<<< orphan*/  bin_attr_fw_dump ; 
 int /*<<< orphan*/  bin_attr_mem ; 
 int /*<<< orphan*/  dev_attr_diag_mode ; 
 int /*<<< orphan*/  dev_attr_fwdump_level ; 
 int /*<<< orphan*/  dev_attr_fwdump_size ; 
 int /*<<< orphan*/  dev_attr_fwdump_state ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct netxen_adapter *adapter)
{
	struct pci_dev *pdev = adapter->pdev;
	struct device *dev = &pdev->dev;

	FUNC1(dev, &dev_attr_diag_mode);
	FUNC0(dev, &bin_attr_crb);
	FUNC0(dev, &bin_attr_mem);

	if (adapter->mdump.md_template) {
		FUNC0(dev, &bin_attr_fw_dump);
		FUNC1(dev, &dev_attr_fwdump_size);
		FUNC1(dev, &dev_attr_fwdump_level);
		FUNC1(dev, &dev_attr_fwdump_state);
		FUNC0(dev, &bin_attr_dimm);
	}
}