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
struct scsi_dh_data {scalar_t__ buf; } ;
struct scsi_device {TYPE_1__* request_queue; struct scsi_dh_data* scsi_dh_data; } ;
struct rdac_dh_data {TYPE_2__* ctlr; } ;
struct TYPE_4__ {int /*<<< orphan*/  kref; scalar_t__ ms_queued; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_NOTICE ; 
 int /*<<< orphan*/  RDAC_NAME ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_dh_data*) ; 
 int /*<<< orphan*/  kmpath_rdacd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  release_controller ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC9( struct scsi_device *sdev )
{
	struct scsi_dh_data *scsi_dh_data;
	struct rdac_dh_data *h;
	unsigned long flags;

	scsi_dh_data = sdev->scsi_dh_data;
	h = (struct rdac_dh_data *) scsi_dh_data->buf;
	if (h->ctlr && h->ctlr->ms_queued)
		FUNC0(kmpath_rdacd);

	FUNC6(sdev->request_queue->queue_lock, flags);
	sdev->scsi_dh_data = NULL;
	FUNC8(sdev->request_queue->queue_lock, flags);

	FUNC5(&list_lock);
	if (h->ctlr)
		FUNC2(&h->ctlr->kref, release_controller);
	FUNC7(&list_lock);
	FUNC1(scsi_dh_data);
	FUNC3(THIS_MODULE);
	FUNC4(KERN_NOTICE, sdev, "%s: Detached\n", RDAC_NAME);
}