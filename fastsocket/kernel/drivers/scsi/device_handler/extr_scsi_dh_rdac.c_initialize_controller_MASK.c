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
typedef  int /*<<< orphan*/  u8 ;
struct scsi_device {int dummy; } ;
struct c4_inquiry {int* slot_id; } ;
struct TYPE_2__ {struct c4_inquiry c4; } ;
struct rdac_dh_data {int /*<<< orphan*/  ctlr; TYPE_1__ inq; } ;

/* Variables and functions */
 int SCSI_DH_OK ; 
 int SCSI_DH_RES_TEMP_UNAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ *,struct scsi_device*) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct scsi_device*,int,int,struct rdac_dh_data*) ; 

__attribute__((used)) static int FUNC4(struct scsi_device *sdev,
		struct rdac_dh_data *h, char *array_name, u8 *array_id)
{
	int err, index;
	struct c4_inquiry *inqp;

	err = FUNC3(sdev, 0xC4, sizeof(struct c4_inquiry), h);
	if (err == SCSI_DH_OK) {
		inqp = &h->inq.c4;
		/* get the controller index */
		if (inqp->slot_id[1] == 0x31)
			index = 0;
		else
			index = 1;

		FUNC1(&list_lock);
		h->ctlr = FUNC0(index, array_name, array_id, sdev);
		if (!h->ctlr)
			err = SCSI_DH_RES_TEMP_UNAVAIL;
		FUNC2(&list_lock);
	}
	return err;
}