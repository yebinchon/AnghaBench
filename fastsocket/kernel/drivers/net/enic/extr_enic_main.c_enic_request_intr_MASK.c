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
struct net_device {char* name; unsigned int rq_count; unsigned int wq_count; unsigned int intr_count; TYPE_3__* msix; TYPE_2__* msix_entry; struct net_device* napi; TYPE_1__* pdev; int /*<<< orphan*/  vdev; struct net_device* netdev; } ;
struct enic {char* name; unsigned int rq_count; unsigned int wq_count; unsigned int intr_count; TYPE_3__* msix; TYPE_2__* msix_entry; struct enic* napi; TYPE_1__* pdev; int /*<<< orphan*/  vdev; struct enic* netdev; } ;
struct TYPE_6__ {char* devname; int requested; struct net_device* devid; int /*<<< orphan*/  isr; } ;
struct TYPE_5__ {int /*<<< orphan*/  vector; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
#define  VNIC_DEV_INTR_MODE_INTX 130 
#define  VNIC_DEV_INTR_MODE_MSI 129 
#define  VNIC_DEV_INTR_MODE_MSIX 128 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  enic_isr_legacy ; 
 int /*<<< orphan*/  enic_isr_msi ; 
 int /*<<< orphan*/  enic_isr_msix_err ; 
 int /*<<< orphan*/  enic_isr_msix_notify ; 
 int /*<<< orphan*/  enic_isr_msix_rq ; 
 int /*<<< orphan*/  enic_isr_msix_wq ; 
 unsigned int FUNC2 (struct net_device*) ; 
 unsigned int FUNC3 (struct net_device*) ; 
 unsigned int FUNC4 (struct net_device*,unsigned int) ; 
 unsigned int FUNC5 (struct net_device*,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct enic *enic)
{
	struct net_device *netdev = enic->netdev;
	unsigned int i, intr;
	int err = 0;

	switch (FUNC8(enic->vdev)) {

	case VNIC_DEV_INTR_MODE_INTX:

		err = FUNC6(enic->pdev->irq, enic_isr_legacy,
			IRQF_SHARED, netdev->name, netdev);
		break;

	case VNIC_DEV_INTR_MODE_MSI:

		err = FUNC6(enic->pdev->irq, enic_isr_msi,
			0, netdev->name, enic);
		break;

	case VNIC_DEV_INTR_MODE_MSIX:

		for (i = 0; i < enic->rq_count; i++) {
			intr = FUNC4(enic, i);
			FUNC7(enic->msix[intr].devname,
				sizeof(enic->msix[intr].devname),
				"%.11s-rx-%d", netdev->name, i);
			enic->msix[intr].isr = enic_isr_msix_rq;
			enic->msix[intr].devid = &enic->napi[i];
		}

		for (i = 0; i < enic->wq_count; i++) {
			intr = FUNC5(enic, i);
			FUNC7(enic->msix[intr].devname,
				sizeof(enic->msix[intr].devname),
				"%.11s-tx-%d", netdev->name, i);
			enic->msix[intr].isr = enic_isr_msix_wq;
			enic->msix[intr].devid = enic;
		}

		intr = FUNC2(enic);
		FUNC7(enic->msix[intr].devname,
			sizeof(enic->msix[intr].devname),
			"%.11s-err", netdev->name);
		enic->msix[intr].isr = enic_isr_msix_err;
		enic->msix[intr].devid = enic;

		intr = FUNC3(enic);
		FUNC7(enic->msix[intr].devname,
			sizeof(enic->msix[intr].devname),
			"%.11s-notify", netdev->name);
		enic->msix[intr].isr = enic_isr_msix_notify;
		enic->msix[intr].devid = enic;

		for (i = 0; i < FUNC0(enic->msix); i++)
			enic->msix[i].requested = 0;

		for (i = 0; i < enic->intr_count; i++) {
			err = FUNC6(enic->msix_entry[i].vector,
				enic->msix[i].isr, 0,
				enic->msix[i].devname,
				enic->msix[i].devid);
			if (err) {
				FUNC1(enic);
				break;
			}
			enic->msix[i].requested = 1;
		}

		break;

	default:
		break;
	}

	return err;
}