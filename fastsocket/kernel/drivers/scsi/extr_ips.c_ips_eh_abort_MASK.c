#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_1__* device; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; scalar_t__ hostdata; } ;
struct TYPE_9__ {TYPE_3__* head; } ;
struct TYPE_7__ {int /*<<< orphan*/  scb_waitlist; TYPE_4__ copp_waitlist; int /*<<< orphan*/  active; } ;
typedef  TYPE_2__ ips_ha_t ;
struct TYPE_8__ {struct TYPE_8__* next; struct scsi_cmnd* scsi_cmd; } ;
typedef  TYPE_3__ ips_copp_wait_item_t ;
struct TYPE_6__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct scsi_cmnd *SC)
{
	ips_ha_t *ha;
	ips_copp_wait_item_t *item;
	int ret;
	struct Scsi_Host *host;

	FUNC0("ips_eh_abort", 1);

	if (!SC)
		return (FAILED);

	host = SC->device->host;
	ha = (ips_ha_t *) SC->device->host->hostdata;

	if (!ha)
		return (FAILED);

	if (!ha->active)
		return (FAILED);

	FUNC3(host->host_lock);

	/* See if the command is on the copp queue */
	item = ha->copp_waitlist.head;
	while ((item) && (item->scsi_cmd != SC))
		item = item->next;

	if (item) {
		/* Found it */
		FUNC1(&ha->copp_waitlist, item);
		ret = (SUCCESS);

		/* See if the command is on the wait queue */
	} else if (FUNC2(&ha->scb_waitlist, SC)) {
		/* command not sent yet */
		ret = (SUCCESS);
	} else {
		/* command must have already been sent */
		ret = (FAILED);
	}

	FUNC4(host->host_lock);
	return ret;
}