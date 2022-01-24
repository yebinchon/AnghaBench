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
struct scsi_dh_data {scalar_t__ buf; int /*<<< orphan*/ * scsi_dh; } ;
struct scsi_device {TYPE_1__* request_queue; struct scsi_dh_data* scsi_dh_data; } ;
struct rdac_dh_data {TYPE_2__* ctlr; scalar_t__ lun_state; scalar_t__ mode; int /*<<< orphan*/  lun; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  kref; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 int ARRAY_LABEL_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int /*<<< orphan*/  RDAC_NAME ; 
 int /*<<< orphan*/  RDAC_STATE_ACTIVE ; 
 int SCSI_DH_OK ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  UNINITIALIZED_LUN ; 
 int UNIQUE_ID_LEN ; 
 int FUNC0 (struct scsi_device*,struct rdac_dh_data*) ; 
 int FUNC1 (struct scsi_device*,struct rdac_dh_data*,char*,char*) ; 
 int FUNC2 (struct scsi_device*,struct rdac_dh_data*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_dh_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct scsi_dh_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/ * lun_state ; 
 int /*<<< orphan*/ * mode ; 
 int /*<<< orphan*/  rdac_dh ; 
 int /*<<< orphan*/  release_controller ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC7 (struct scsi_device*,struct rdac_dh_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct scsi_device *sdev)
{
	struct scsi_dh_data *scsi_dh_data;
	struct rdac_dh_data *h;
	unsigned long flags;
	int err;
	char array_name[ARRAY_LABEL_LEN];
	char array_id[UNIQUE_ID_LEN];

	scsi_dh_data = FUNC5(sizeof(*scsi_dh_data)
			       + sizeof(*h) , GFP_KERNEL);
	if (!scsi_dh_data) {
		FUNC6(KERN_ERR, sdev, "%s: Attach failed\n",
			    RDAC_NAME);
		return -ENOMEM;
	}

	scsi_dh_data->scsi_dh = &rdac_dh;
	h = (struct rdac_dh_data *) scsi_dh_data->buf;
	h->lun = UNINITIALIZED_LUN;
	h->state = RDAC_STATE_ACTIVE;

	err = FUNC1(sdev, h, array_name, array_id);
	if (err != SCSI_DH_OK)
		goto failed;

	err = FUNC2(sdev, h, array_name, array_id);
	if (err != SCSI_DH_OK)
		goto failed;

	err = FUNC0(sdev, h);
	if (err != SCSI_DH_OK)
		goto clean_ctlr;

	err = FUNC7(sdev, h);
	if (err != SCSI_DH_OK)
		goto clean_ctlr;

	if (!FUNC12(THIS_MODULE))
		goto clean_ctlr;

	FUNC9(sdev->request_queue->queue_lock, flags);
	sdev->scsi_dh_data = scsi_dh_data;
	FUNC11(sdev->request_queue->queue_lock, flags);

	FUNC6(KERN_NOTICE, sdev,
		    "%s: LUN %d (%s) (%s)\n",
		    RDAC_NAME, h->lun, mode[(int)h->mode],
		    lun_state[(int)h->lun_state]);

	return 0;

clean_ctlr:
	FUNC8(&list_lock);
	FUNC4(&h->ctlr->kref, release_controller);
	FUNC10(&list_lock);

failed:
	FUNC3(scsi_dh_data);
	FUNC6(KERN_ERR, sdev, "%s: not attached\n",
		    RDAC_NAME);
	return -EINVAL;
}