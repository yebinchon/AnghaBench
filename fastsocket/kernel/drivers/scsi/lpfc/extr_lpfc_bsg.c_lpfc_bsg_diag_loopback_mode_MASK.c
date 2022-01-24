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
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_2__ {int /*<<< orphan*/  sli_intf; } ;
struct lpfc_hba {scalar_t__ sli_rev; TYPE_1__ sli4_hba; } ;
struct fc_bsg_job {struct Scsi_Host* shost; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct lpfc_hba*,struct fc_bsg_job*) ; 
 int FUNC2 (struct lpfc_hba*,struct fc_bsg_job*) ; 
 int /*<<< orphan*/  lpfc_sli_intf_if_type ; 

__attribute__((used)) static int
FUNC3(struct fc_bsg_job *job)
{
	struct Scsi_Host *shost;
	struct lpfc_vport *vport;
	struct lpfc_hba *phba;
	int rc;

	shost = job->shost;
	if (!shost)
		return -ENODEV;
	vport = (struct lpfc_vport *)job->shost->hostdata;
	if (!vport)
		return -ENODEV;
	phba = vport->phba;
	if (!phba)
		return -ENODEV;

	if (phba->sli_rev < LPFC_SLI_REV4)
		rc = FUNC1(phba, job);
	else if (FUNC0(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) ==
		 LPFC_SLI_INTF_IF_TYPE_2)
		rc = FUNC2(phba, job);
	else
		rc = -ENODEV;

	return rc;
}