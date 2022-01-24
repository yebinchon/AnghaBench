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
struct TYPE_2__ {scalar_t__ scsi_xri_cnt; scalar_t__ els_xri_cnt; int /*<<< orphan*/  lpfc_abts_els_sgl_list; int /*<<< orphan*/  lpfc_sgl_list; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct lpfc_hba *phba)
{
	/* Initialize and populate the sglq list per host/VF. */
	FUNC0(&phba->sli4_hba.lpfc_sgl_list);
	FUNC0(&phba->sli4_hba.lpfc_abts_els_sgl_list);

	/* els xri-sgl book keeping */
	phba->sli4_hba.els_xri_cnt = 0;

	/* scsi xri-buffer book keeping */
	phba->sli4_hba.scsi_xri_cnt = 0;
}