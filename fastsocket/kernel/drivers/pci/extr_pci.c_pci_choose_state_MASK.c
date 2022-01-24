#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int event; } ;
typedef  TYPE_1__ pm_message_t ;
typedef  scalar_t__ pci_power_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PCI_CAP_ID_PM ; 
 scalar_t__ PCI_D0 ; 
 scalar_t__ PCI_D3hot ; 
 scalar_t__ PCI_POWER_ERROR ; 
#define  PM_EVENT_FREEZE 132 
#define  PM_EVENT_HIBERNATE 131 
#define  PM_EVENT_ON 130 
#define  PM_EVENT_PRETHAW 129 
#define  PM_EVENT_SUSPEND 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 

pci_power_t FUNC4(struct pci_dev *dev, pm_message_t state)
{
	pci_power_t ret;

	if (!FUNC2(dev, PCI_CAP_ID_PM))
		return PCI_D0;

	ret = FUNC3(dev);
	if (ret != PCI_POWER_ERROR)
		return ret;

	switch (state.event) {
	case PM_EVENT_ON:
		return PCI_D0;
	case PM_EVENT_FREEZE:
	case PM_EVENT_PRETHAW:
		/* REVISIT both freeze and pre-thaw "should" use D0 */
	case PM_EVENT_SUSPEND:
	case PM_EVENT_HIBERNATE:
		return PCI_D3hot;
	default:
		FUNC1(&dev->dev, "unrecognized suspend event %d\n",
			 state.event);
		FUNC0();
	}
	return PCI_D0;
}