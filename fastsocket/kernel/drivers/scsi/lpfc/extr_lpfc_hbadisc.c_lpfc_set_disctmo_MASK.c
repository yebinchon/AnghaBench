#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct lpfc_vport {int /*<<< orphan*/  fc_adisc_cnt; int /*<<< orphan*/  fc_plogi_cnt; int /*<<< orphan*/  fc_disctmo; int /*<<< orphan*/  port_state; int /*<<< orphan*/  fc_flag; struct lpfc_hba* phba; } ;
struct lpfc_hba {int fc_edtov; int fc_ratov; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_DISC_TMO ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_DISCOVERY ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_ELS_CMD ; 
 int /*<<< orphan*/  LPFC_LOCAL_CFG_LINK ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct lpfc_vport *vport)
{
	struct Scsi_Host *shost = FUNC2(vport);
	struct lpfc_hba  *phba = vport->phba;
	uint32_t tmo;

	if (vport->port_state == LPFC_LOCAL_CFG_LINK) {
		/* For FAN, timeout should be greater than edtov */
		tmo = (((phba->fc_edtov + 999) / 1000) + 1);
	} else {
		/* Normal discovery timeout should be > than ELS/CT timeout
		 * FC spec states we need 3 * ratov for CT requests
		 */
		tmo = ((phba->fc_ratov * 3) + 3);
	}


	if (!FUNC7(&vport->fc_disctmo)) {
		FUNC0(vport, LPFC_DISC_TRC_ELS_CMD,
			"set disc timer:  tmo:x%x state:x%x flg:x%x",
			tmo, vport->port_state, vport->fc_flag);
	}

	FUNC3(&vport->fc_disctmo, jiffies + FUNC4(1000 * tmo));
	FUNC5(shost->host_lock);
	vport->fc_flag |= FC_DISC_TMO;
	FUNC6(shost->host_lock);

	/* Start Discovery Timer state <hba_state> */
	FUNC1(vport, KERN_INFO, LOG_DISCOVERY,
			 "0247 Start Discovery Timer state x%x "
			 "Data: x%x x%lx x%x x%x\n",
			 vport->port_state, tmo,
			 (unsigned long)&vport->fc_disctmo, vport->fc_plogi_cnt,
			 vport->fc_adisc_cnt);

	return;
}