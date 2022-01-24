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
struct workqueue_struct {int dummy; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct MPT2SAS_ADAPTER {int remove_host; int /*<<< orphan*/  fw_event_lock; struct workqueue_struct* firmware_event_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPT2SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT2SAS_ADAPTER*) ; 
 int /*<<< orphan*/  FUNC2 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPT2SAS_ADAPTER*) ; 
 struct Scsi_Host* FUNC4 (struct pci_dev*) ; 
 struct MPT2SAS_ADAPTER* FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC8(struct pci_dev *pdev)
{
	struct Scsi_Host *shost = FUNC4(pdev);
	struct MPT2SAS_ADAPTER *ioc = FUNC5(shost);
	struct workqueue_struct	*wq;
	unsigned long flags;

	ioc->remove_host = 1;
	FUNC0(ioc);

	FUNC6(&ioc->fw_event_lock, flags);
	wq = ioc->firmware_event_thread;
	ioc->firmware_event_thread = NULL;
	FUNC7(&ioc->fw_event_lock, flags);
	if (wq)
		FUNC2(wq);

	FUNC1(ioc);
	FUNC3(ioc);
}