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
struct scsi_dh_data {scalar_t__ buf; int /*<<< orphan*/ * scsi_dh; } ;
struct scsi_device {TYPE_1__* request_queue; struct scsi_dh_data* scsi_dh_data; } ;
struct clariion_dh_data {size_t lun_state; void* default_sp; int /*<<< orphan*/  port; void* current_sp; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 size_t CLARIION_LUN_UNINITIALIZED ; 
 int /*<<< orphan*/  CLARIION_NAME ; 
 void* CLARIION_UNBOUND_LU ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int SCSI_DH_OK ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  clariion_dh ; 
 int FUNC0 (struct scsi_device*,struct clariion_dh_data*) ; 
 int FUNC1 (struct scsi_device*,struct clariion_dh_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_dh_data*) ; 
 struct scsi_dh_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lun_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct scsi_device *sdev)
{
	struct scsi_dh_data *scsi_dh_data;
	struct clariion_dh_data *h;
	unsigned long flags;
	int err;

	scsi_dh_data = FUNC3(sizeof(*scsi_dh_data)
			       + sizeof(*h) , GFP_KERNEL);
	if (!scsi_dh_data) {
		FUNC4(KERN_ERR, sdev, "%s: Attach failed\n",
			    CLARIION_NAME);
		return -ENOMEM;
	}

	scsi_dh_data->scsi_dh = &clariion_dh;
	h = (struct clariion_dh_data *) scsi_dh_data->buf;
	h->lun_state = CLARIION_LUN_UNINITIALIZED;
	h->default_sp = CLARIION_UNBOUND_LU;
	h->current_sp = CLARIION_UNBOUND_LU;

	err = FUNC1(sdev, h);
	if (err != SCSI_DH_OK)
		goto failed;

	err = FUNC0(sdev, h);
	if (err != SCSI_DH_OK)
		goto failed;

	if (!FUNC7(THIS_MODULE))
		goto failed;

	FUNC5(sdev->request_queue->queue_lock, flags);
	sdev->scsi_dh_data = scsi_dh_data;
	FUNC6(sdev->request_queue->queue_lock, flags);

	FUNC4(KERN_INFO, sdev,
		    "%s: connected to SP %c Port %d (%s, default SP %c)\n",
		    CLARIION_NAME, h->current_sp + 'A',
		    h->port, lun_state[h->lun_state],
		    h->default_sp + 'A');

	return 0;

failed:
	FUNC2(scsi_dh_data);
	FUNC4(KERN_ERR, sdev, "%s: not attached\n",
		    CLARIION_NAME);
	return -EINVAL;
}