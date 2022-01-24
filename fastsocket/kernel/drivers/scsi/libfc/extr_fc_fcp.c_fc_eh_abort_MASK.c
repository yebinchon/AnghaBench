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
struct scsi_cmnd {TYPE_1__* device; } ;
struct fc_lport {scalar_t__ state; int /*<<< orphan*/  link_up; } ;
struct fc_fcp_pkt {int dummy; } ;
struct fc_fcp_internal {int /*<<< orphan*/  scsi_queue_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct fc_fcp_pkt* FUNC0 (struct scsi_cmnd*) ; 
 int FAILED ; 
 scalar_t__ LPORT_ST_READY ; 
 int SUCCESS ; 
 int FUNC1 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC2 (struct fc_fcp_pkt*) ; 
 int FUNC3 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_fcp_pkt*) ; 
 struct fc_fcp_internal* FUNC7 (struct fc_lport*) ; 
 struct fc_lport* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC11(struct scsi_cmnd *sc_cmd)
{
	struct fc_fcp_pkt *fsp;
	struct fc_lport *lport;
	struct fc_fcp_internal *si;
	int rc = FAILED;
	unsigned long flags;
	int rval;

	rval = FUNC1(sc_cmd);
	if (rval)
		return rval;

	lport = FUNC8(sc_cmd->device->host);
	if (lport->state != LPORT_ST_READY)
		return rc;
	else if (!lport->link_up)
		return rc;

	si = FUNC7(lport);
	FUNC9(&si->scsi_queue_lock, flags);
	fsp = FUNC0(sc_cmd);
	if (!fsp) {
		/* command completed while scsi eh was setting up */
		FUNC10(&si->scsi_queue_lock, flags);
		return SUCCESS;
	}
	/* grab a ref so the fsp and sc_cmd cannot be relased from under us */
	FUNC4(fsp);
	FUNC10(&si->scsi_queue_lock, flags);

	if (FUNC2(fsp)) {
		/* completed while we were waiting for timer to be deleted */
		rc = SUCCESS;
		goto release_pkt;
	}

	rc = FUNC3(fsp);
	FUNC6(fsp);

release_pkt:
	FUNC5(fsp);
	return rc;
}