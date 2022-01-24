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
struct alua_dh_data {int group_id; int rel_port; struct scsi_device* sdev; int /*<<< orphan*/  bufflen; int /*<<< orphan*/  inq; int /*<<< orphan*/  buff; int /*<<< orphan*/  state; int /*<<< orphan*/  tpgs; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALUA_DH_NAME ; 
 int /*<<< orphan*/  ALUA_INQUIRY_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int SCSI_DH_DEV_OFFLINED ; 
 int SCSI_DH_OK ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  TPGS_MODE_UNINITIALIZED ; 
 int /*<<< orphan*/  TPGS_STATE_OPTIMIZED ; 
 int /*<<< orphan*/  alua_dh ; 
 int FUNC0 (struct scsi_device*,struct alua_dh_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_dh_data*) ; 
 struct scsi_dh_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct scsi_device *sdev)
{
	struct scsi_dh_data *scsi_dh_data;
	struct alua_dh_data *h;
	unsigned long flags;
	int err = SCSI_DH_OK;

	scsi_dh_data = FUNC2(sizeof(*scsi_dh_data)
			       + sizeof(*h) , GFP_KERNEL);
	if (!scsi_dh_data) {
		FUNC3(KERN_ERR, sdev, "%s: Attach failed\n",
			    ALUA_DH_NAME);
		return -ENOMEM;
	}

	scsi_dh_data->scsi_dh = &alua_dh;
	h = (struct alua_dh_data *) scsi_dh_data->buf;
	h->tpgs = TPGS_MODE_UNINITIALIZED;
	h->state = TPGS_STATE_OPTIMIZED;
	h->group_id = -1;
	h->rel_port = -1;
	h->buff = h->inq;
	h->bufflen = ALUA_INQUIRY_SIZE;
	h->sdev = sdev;

	err = FUNC0(sdev, h);
	if ((err != SCSI_DH_OK) && (err != SCSI_DH_DEV_OFFLINED))
		goto failed;

	if (!FUNC6(THIS_MODULE))
		goto failed;

	FUNC4(sdev->request_queue->queue_lock, flags);
	sdev->scsi_dh_data = scsi_dh_data;
	FUNC5(sdev->request_queue->queue_lock, flags);
	FUNC3(KERN_NOTICE, sdev, "%s: Attached\n", ALUA_DH_NAME);

	return 0;

failed:
	FUNC1(scsi_dh_data);
	FUNC3(KERN_ERR, sdev, "%s: not attached\n", ALUA_DH_NAME);
	return -EINVAL;
}