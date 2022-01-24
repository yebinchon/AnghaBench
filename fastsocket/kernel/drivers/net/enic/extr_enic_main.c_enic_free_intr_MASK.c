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
struct net_device {TYPE_3__* msix; TYPE_1__* msix_entry; TYPE_2__* pdev; int /*<<< orphan*/  vdev; struct net_device* netdev; } ;
struct enic {TYPE_3__* msix; TYPE_1__* msix_entry; TYPE_2__* pdev; int /*<<< orphan*/  vdev; struct enic* netdev; } ;
struct TYPE_6__ {struct net_device* devid; int /*<<< orphan*/  requested; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_3__*) ; 
#define  VNIC_DEV_INTR_MODE_INTX 130 
#define  VNIC_DEV_INTR_MODE_MSI 129 
#define  VNIC_DEV_INTR_MODE_MSIX 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct enic *enic)
{
	struct net_device *netdev = enic->netdev;
	unsigned int i;

	switch (FUNC2(enic->vdev)) {
	case VNIC_DEV_INTR_MODE_INTX:
		FUNC1(enic->pdev->irq, netdev);
		break;
	case VNIC_DEV_INTR_MODE_MSI:
		FUNC1(enic->pdev->irq, enic);
		break;
	case VNIC_DEV_INTR_MODE_MSIX:
		for (i = 0; i < FUNC0(enic->msix); i++)
			if (enic->msix[i].requested)
				FUNC1(enic->msix_entry[i].vector,
					enic->msix[i].devid);
		break;
	default:
		break;
	}
}