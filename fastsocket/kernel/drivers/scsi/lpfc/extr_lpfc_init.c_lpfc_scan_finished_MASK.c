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
struct lpfc_vport {int load_flag; scalar_t__ port_state; scalar_t__ fc_map_cnt; scalar_t__ fc_prli_sent; scalar_t__ num_disc_nodes; struct lpfc_hba* phba; } ;
struct TYPE_2__ {int sli_flag; } ;
struct lpfc_hba {scalar_t__ link_state; TYPE_1__ sli; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; scalar_t__ hostdata; } ;

/* Variables and functions */
 int FC_UNLOADING ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_INIT ; 
 scalar_t__ LPFC_LINK_DOWN ; 
 int LPFC_SLI_MBOX_ACTIVE ; 
 scalar_t__ LPFC_VPORT_READY ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct Scsi_Host *shost, unsigned long time)
{
	struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
	struct lpfc_hba   *phba = vport->phba;
	int stat = 0;

	FUNC2(shost->host_lock);

	if (vport->load_flag & FC_UNLOADING) {
		stat = 1;
		goto finished;
	}
	if (time >= FUNC1(30 * 1000)) {
		FUNC0(phba, KERN_INFO, LOG_INIT,
				"0461 Scanning longer than 30 "
				"seconds.  Continuing initialization\n");
		stat = 1;
		goto finished;
	}
	if (time >= FUNC1(15 * 1000) &&
	    phba->link_state <= LPFC_LINK_DOWN) {
		FUNC0(phba, KERN_INFO, LOG_INIT,
				"0465 Link down longer than 15 "
				"seconds.  Continuing initialization\n");
		stat = 1;
		goto finished;
	}

	if (vport->port_state != LPFC_VPORT_READY)
		goto finished;
	if (vport->num_disc_nodes || vport->fc_prli_sent)
		goto finished;
	if (vport->fc_map_cnt == 0 && time < FUNC1(2 * 1000))
		goto finished;
	if ((phba->sli.sli_flag & LPFC_SLI_MBOX_ACTIVE) != 0)
		goto finished;

	stat = 1;

finished:
	FUNC3(shost->host_lock);
	return stat;
}