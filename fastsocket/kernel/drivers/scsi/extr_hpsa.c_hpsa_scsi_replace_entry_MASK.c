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
struct hpsa_scsi_dev_t {int target; int /*<<< orphan*/  lun; int /*<<< orphan*/  bus; int /*<<< orphan*/  devtype; } ;
struct ctlr_info {TYPE_1__* pdev; struct hpsa_scsi_dev_t** dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HPSA_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ctlr_info *h, int hostno,
	int entry, struct hpsa_scsi_dev_t *new_entry,
	struct hpsa_scsi_dev_t *added[], int *nadded,
	struct hpsa_scsi_dev_t *removed[], int *nremoved)
{
	/* assumes h->devlock is held */
	FUNC0(entry < 0 || entry >= HPSA_MAX_DEVICES);
	removed[*nremoved] = h->dev[entry];
	(*nremoved)++;

	/*
	 * New physical devices won't have target/lun assigned yet
	 * so we need to preserve the values in the slot we are replacing.
	 */
	if (new_entry->target == -1) {
		new_entry->target = h->dev[entry]->target;
		new_entry->lun = h->dev[entry]->lun;
	}

	h->dev[entry] = new_entry;
	added[*nadded] = new_entry;
	(*nadded)++;
	FUNC1(&h->pdev->dev, "%s device c%db%dt%dl%d changed.\n",
		FUNC2(new_entry->devtype), hostno, new_entry->bus,
			new_entry->target, new_entry->lun);
}