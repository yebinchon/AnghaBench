#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int version; int length; int /*<<< orphan*/  opcode; } ;
struct ibmvfc_tmf {unsigned long scsi_id; int /*<<< orphan*/  my_cancel_key; int /*<<< orphan*/  cancel_key; TYPE_2__ common; } ;
struct ibmvfc_host {int aborting_passthru; scalar_t__ state; TYPE_3__* host; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct ibmvfc_tmf tmf; } ;
struct ibmvfc_event {TYPE_1__ iu; } ;
struct fc_bsg_job {scalar_t__ dd_data; int /*<<< orphan*/  shost; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ENTER ; 
 scalar_t__ IBMVFC_ACTIVE ; 
 int /*<<< orphan*/  IBMVFC_INTERNAL_CANCEL_KEY ; 
 int /*<<< orphan*/  IBMVFC_MAD_FORMAT ; 
 int /*<<< orphan*/  IBMVFC_PASSTHRU_CANCEL_KEY ; 
 int /*<<< orphan*/  IBMVFC_TMF_MAD ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  default_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  ibmvfc_bsg_timeout_done ; 
 struct ibmvfc_event* FUNC3 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ibmvfc_event*,struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_tmf*,int /*<<< orphan*/ ,int) ; 
 struct ibmvfc_host* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct fc_bsg_job *job)
{
	struct ibmvfc_host *vhost = FUNC7(job->shost);
	unsigned long port_id = (unsigned long)job->dd_data;
	struct ibmvfc_event *evt;
	struct ibmvfc_tmf *tmf;
	unsigned long flags;
	int rc;

	ENTER;
	FUNC8(vhost->host->host_lock, flags);
	if (vhost->aborting_passthru || vhost->state != IBMVFC_ACTIVE) {
		FUNC0(vhost);
		FUNC9(vhost->host->host_lock, flags);
		return 0;
	}

	vhost->aborting_passthru = 1;
	evt = FUNC3(vhost);
	FUNC4(evt, ibmvfc_bsg_timeout_done, IBMVFC_MAD_FORMAT);

	tmf = &evt->iu.tmf;
	FUNC6(tmf, 0, sizeof(*tmf));
	tmf->common.version = 1;
	tmf->common.opcode = IBMVFC_TMF_MAD;
	tmf->common.length = sizeof(*tmf);
	tmf->scsi_id = port_id;
	tmf->cancel_key = IBMVFC_PASSTHRU_CANCEL_KEY;
	tmf->my_cancel_key = IBMVFC_INTERNAL_CANCEL_KEY;
	rc = FUNC5(evt, vhost, default_timeout);

	if (rc != 0) {
		vhost->aborting_passthru = 0;
		FUNC1(vhost->dev, "Failed to send cancel event. rc=%d\n", rc);
		rc = -EIO;
	} else
		FUNC2(vhost->dev, "Cancelling passthru command to port id 0x%lx\n",
			 port_id);

	FUNC9(vhost->host->host_lock, flags);

	LEAVE;
	return rc;
}