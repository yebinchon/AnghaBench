#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {TYPE_3__* bus; } ;
struct myri10ge_priv {TYPE_2__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct pci_dev* self; } ;
struct TYPE_5__ {struct device dev; TYPE_1__* bus; } ;
struct TYPE_4__ {struct pci_dev* self; } ;

/* Variables and functions */
 scalar_t__ PCI_ERR_CAP ; 
 unsigned int PCI_ERR_CAP_ECRC_GENC ; 
 unsigned int PCI_ERR_CAP_ECRC_GENE ; 
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int myri10ge_ecrc_enable ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,scalar_t__,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,scalar_t__,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct myri10ge_priv *mgp)
{
	struct pci_dev *bridge = mgp->pdev->bus->self;
	struct device *dev = &mgp->pdev->dev;
	int cap;
	unsigned err_cap;
	int ret;

	if (!myri10ge_ecrc_enable || !bridge)
		return;

	/* check that the bridge is a root port */
	if (FUNC4(bridge) != PCI_EXP_TYPE_ROOT_PORT) {
		if (myri10ge_ecrc_enable > 1) {
			struct pci_dev *prev_bridge, *old_bridge = bridge;

			/* Walk the hierarchy up to the root port
			 * where ECRC has to be enabled */
			do {
				prev_bridge = bridge;
				bridge = bridge->bus->self;
				if (!bridge || prev_bridge == bridge) {
					FUNC0(dev,
						"Failed to find root port"
						" to force ECRC\n");
					return;
				}
			} while (FUNC4(bridge) !=
				 PCI_EXP_TYPE_ROOT_PORT);

			FUNC1(dev,
				 "Forcing ECRC on non-root port %s"
				 " (enabling on root port %s)\n",
				 FUNC3(old_bridge), FUNC3(bridge));
		} else {
			FUNC0(dev,
				"Not enabling ECRC on non-root port %s\n",
				FUNC3(bridge));
			return;
		}
	}

	cap = FUNC2(bridge, PCI_EXT_CAP_ID_ERR);
	if (!cap)
		return;

	ret = FUNC5(bridge, cap + PCI_ERR_CAP, &err_cap);
	if (ret) {
		FUNC0(dev, "failed reading ext-conf-space of %s\n",
			FUNC3(bridge));
		FUNC0(dev, "\t pci=nommconf in use? "
			"or buggy/incomplete/absent ACPI MCFG attr?\n");
		return;
	}
	if (!(err_cap & PCI_ERR_CAP_ECRC_GENC))
		return;

	err_cap |= PCI_ERR_CAP_ECRC_GENE;
	FUNC6(bridge, cap + PCI_ERR_CAP, err_cap);
	FUNC1(dev, "Enabled ECRC on upstream bridge %s\n", FUNC3(bridge));
}