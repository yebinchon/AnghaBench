#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct TYPE_11__ {size_t* rpi_ids; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  mbox_mem_pool; TYPE_2__ sli4_hba; TYPE_1__* pport; } ;
struct TYPE_12__ {scalar_t__ mbxStatus; } ;
struct TYPE_13__ {TYPE_3__ mb; } ;
struct TYPE_14__ {TYPE_4__ u; } ;
struct TYPE_10__ {int /*<<< orphan*/  vpi; } ;
typedef  TYPE_5__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LPFC_MBOX_TMO ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int MBX_SUCCESS ; 
 int MBX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,size_t) ; 
 int FUNC1 (struct lpfc_hba*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,size_t,TYPE_5__*) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct lpfc_hba *phba, uint16_t rpi)
{
	LPFC_MBOXQ_t *mbox;
	int status;

	/* Allocate mboxq structure */
	mbox = FUNC3(phba->mbox_mem_pool, GFP_KERNEL);
	if (mbox == NULL)
		return -ENOMEM;

	if (phba->sli_rev < LPFC_SLI_REV4)
		FUNC2(phba, 0, rpi, mbox);
	else
		FUNC2(phba, phba->pport->vpi,
				 phba->sli4_hba.rpi_ids[rpi], mbox);

	status = FUNC1(phba, mbox, LPFC_MBOX_TMO);

	if ((status != MBX_SUCCESS) || (mbox->u.mb.mbxStatus)) {
		if (status != MBX_TIMEOUT)
			FUNC4(mbox, phba->mbox_mem_pool);
		return -EIO;
	}
	FUNC4(mbox, phba->mbox_mem_pool);
	if (phba->sli_rev == LPFC_SLI_REV4)
		FUNC0(phba, rpi);
	return 0;
}