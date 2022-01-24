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
struct lpfc_vport {int dummy; } ;
struct lpfc_hba {TYPE_1__* pcidev; struct lpfc_vport* pport; int /*<<< orphan*/  brd_no; int /*<<< orphan*/  sdev_cnt; int /*<<< orphan*/  fc_arbtov; int /*<<< orphan*/  fc_altov; int /*<<< orphan*/  fc_ratov; int /*<<< orphan*/  fc_edtov; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FF_DEF_ALTOV ; 
 int /*<<< orphan*/  FF_DEF_ARBTOV ; 
 int /*<<< orphan*/  FF_DEF_EDTOV ; 
 int /*<<< orphan*/  FF_DEF_RATOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct lpfc_vport* FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*) ; 
 struct Scsi_Host* FUNC3 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC5(struct lpfc_hba *phba)
{
	struct lpfc_vport *vport;
	struct Scsi_Host  *shost;

	/* Initialize HBA FC structure */
	phba->fc_edtov = FF_DEF_EDTOV;
	phba->fc_ratov = FF_DEF_RATOV;
	phba->fc_altov = FF_DEF_ALTOV;
	phba->fc_arbtov = FF_DEF_ARBTOV;

	FUNC0(&phba->sdev_cnt, 0);
	vport = FUNC1(phba, phba->brd_no, &phba->pcidev->dev);
	if (!vport)
		return -ENODEV;

	shost = FUNC3(vport);
	phba->pport = vport;
	FUNC2(vport);
	/* Put reference to SCSI host to driver's device private data */
	FUNC4(phba->pcidev, shost);

	return 0;
}