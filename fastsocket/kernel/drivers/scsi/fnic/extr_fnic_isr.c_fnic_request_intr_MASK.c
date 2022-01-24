#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct fnic {char* name; TYPE_4__* msix; TYPE_3__* lport; TYPE_2__* msix_entry; TYPE_1__* pdev; int /*<<< orphan*/  vdev; } ;
struct TYPE_8__ {char* devname; int requested; struct fnic* devid; int /*<<< orphan*/ * isr; } ;
struct TYPE_7__ {int /*<<< orphan*/  host; } ;
struct TYPE_6__ {int /*<<< orphan*/  vector; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 char* DRV_NAME ; 
 size_t FNIC_MSIX_ERR_NOTIFY ; 
 size_t FNIC_MSIX_RQ ; 
 size_t FNIC_MSIX_WQ ; 
 size_t FNIC_MSIX_WQ_COPY ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KERN_ERR ; 
#define  VNIC_DEV_INTR_MODE_INTX 130 
#define  VNIC_DEV_INTR_MODE_MSI 129 
#define  VNIC_DEV_INTR_MODE_MSIX 128 
 int /*<<< orphan*/  FUNC1 (struct fnic*) ; 
 int /*<<< orphan*/  fnic_isr_legacy ; 
 int /*<<< orphan*/  fnic_isr_msi ; 
 int /*<<< orphan*/ * fnic_isr_msix_err_notify ; 
 int /*<<< orphan*/ * fnic_isr_msix_rq ; 
 int /*<<< orphan*/ * fnic_isr_msix_wq ; 
 int /*<<< orphan*/ * fnic_isr_msix_wq_copy ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct fnic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct fnic *fnic)
{
	int err = 0;
	int i;

	switch (FUNC5(fnic->vdev)) {

	case VNIC_DEV_INTR_MODE_INTX:
		err = FUNC2(fnic->pdev->irq, &fnic_isr_legacy,
				  IRQF_SHARED, DRV_NAME, fnic);
		break;

	case VNIC_DEV_INTR_MODE_MSI:
		err = FUNC2(fnic->pdev->irq, &fnic_isr_msi,
				  0, fnic->name, fnic);
		break;

	case VNIC_DEV_INTR_MODE_MSIX:

		FUNC4(fnic->msix[FNIC_MSIX_RQ].devname,
			"%.11s-fcs-rq", fnic->name);
		fnic->msix[FNIC_MSIX_RQ].isr = fnic_isr_msix_rq;
		fnic->msix[FNIC_MSIX_RQ].devid = fnic;

		FUNC4(fnic->msix[FNIC_MSIX_WQ].devname,
			"%.11s-fcs-wq", fnic->name);
		fnic->msix[FNIC_MSIX_WQ].isr = fnic_isr_msix_wq;
		fnic->msix[FNIC_MSIX_WQ].devid = fnic;

		FUNC4(fnic->msix[FNIC_MSIX_WQ_COPY].devname,
			"%.11s-scsi-wq", fnic->name);
		fnic->msix[FNIC_MSIX_WQ_COPY].isr = fnic_isr_msix_wq_copy;
		fnic->msix[FNIC_MSIX_WQ_COPY].devid = fnic;

		FUNC4(fnic->msix[FNIC_MSIX_ERR_NOTIFY].devname,
			"%.11s-err-notify", fnic->name);
		fnic->msix[FNIC_MSIX_ERR_NOTIFY].isr =
			fnic_isr_msix_err_notify;
		fnic->msix[FNIC_MSIX_ERR_NOTIFY].devid = fnic;

		for (i = 0; i < FUNC0(fnic->msix); i++) {
			err = FUNC2(fnic->msix_entry[i].vector,
					  fnic->msix[i].isr, 0,
					  fnic->msix[i].devname,
					  fnic->msix[i].devid);
			if (err) {
				FUNC3(KERN_ERR, fnic->lport->host,
					     "MSIX: request_irq"
					     " failed %d\n", err);
				FUNC1(fnic);
				break;
			}
			fnic->msix[i].requested = 1;
		}
		break;

	default:
		break;
	}

	return err;
}