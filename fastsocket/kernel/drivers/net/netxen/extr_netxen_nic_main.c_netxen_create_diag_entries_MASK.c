#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_3__ {scalar_t__ md_template; } ;
struct netxen_adapter {TYPE_2__* netdev; TYPE_1__ mdump; struct pci_dev* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  bin_attr_crb ; 
 int /*<<< orphan*/  bin_attr_dimm ; 
 int /*<<< orphan*/  bin_attr_fw_dump ; 
 int /*<<< orphan*/  bin_attr_mem ; 
 int /*<<< orphan*/  dev_attr_diag_mode ; 
 int /*<<< orphan*/  dev_attr_fwdump_level ; 
 int /*<<< orphan*/  dev_attr_fwdump_size ; 
 int /*<<< orphan*/  dev_attr_fwdump_state ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 scalar_t__ FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct netxen_adapter *adapter)
{
	struct pci_dev *pdev = adapter->pdev;
	struct device *dev;

	dev = &pdev->dev;
	if (adapter->mdump.md_template) {
		FUNC0(&pdev->dev, "%s: Supports Fw Dump Capability\n",
			 adapter->netdev->name);
		if (FUNC2(dev, &dev_attr_fwdump_state))
			FUNC0(dev, "failed to create fwdump_state "
				 "sysfs entry\n");
		if (FUNC1(dev, &bin_attr_fw_dump))
			FUNC0(dev, "failed to create fw_dump sysfs entry\n");
		if (FUNC2(dev, &dev_attr_fwdump_size))
			FUNC0(dev, "failed to create fwdump_size "
				 "sysfs entry\n");
		if (FUNC2(dev, &dev_attr_fwdump_level))
			FUNC0(dev, "failed to create fwdump_level "
				 "sysfs entry\n");
	}
	if (FUNC2(dev, &dev_attr_diag_mode))
		FUNC0(dev, "failed to create diag_mode sysfs entry\n");
	if (FUNC1(dev, &bin_attr_crb))
		FUNC0(dev, "failed to create crb sysfs entry\n");
	if (FUNC1(dev, &bin_attr_mem))
		FUNC0(dev, "failed to create mem sysfs entry\n");
	if (FUNC1(dev, &bin_attr_dimm))
		FUNC0(dev, "failed to create dimm sysfs entry\n");
}