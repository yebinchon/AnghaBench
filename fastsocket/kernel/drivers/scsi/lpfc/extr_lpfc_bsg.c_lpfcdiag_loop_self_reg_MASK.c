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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  mbox_mem_pool; TYPE_1__* pport; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct TYPE_11__ {int /*<<< orphan*/ * varWords; } ;
struct TYPE_12__ {TYPE_2__ un; scalar_t__ mbxStatus; } ;
struct TYPE_13__ {TYPE_3__ mb; } ;
struct TYPE_14__ {TYPE_4__ u; int /*<<< orphan*/ * context2; int /*<<< orphan*/ * context1; } ;
struct TYPE_10__ {int /*<<< orphan*/  fc_sparam; int /*<<< orphan*/  fc_myDID; int /*<<< orphan*/  vpi; } ;
typedef  TYPE_5__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LPFC_MBOX_TMO ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int MBX_SUCCESS ; 
 int MBX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct lpfc_hba*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct lpfc_hba *phba, uint16_t *rpi)
{
	LPFC_MBOXQ_t *mbox;
	struct lpfc_dmabuf *dmabuff;
	int status;

	mbox = FUNC6(phba->mbox_mem_pool, GFP_KERNEL);
	if (!mbox)
		return -ENOMEM;

	if (phba->sli_rev < LPFC_SLI_REV4)
		status = FUNC2(phba, 0, phba->pport->fc_myDID,
				(uint8_t *)&phba->pport->fc_sparam,
				mbox, *rpi);
	else {
		*rpi = FUNC3(phba);
		status = FUNC2(phba, phba->pport->vpi,
				phba->pport->fc_myDID,
				(uint8_t *)&phba->pport->fc_sparam,
				mbox, *rpi);
	}

	if (status) {
		FUNC7(mbox, phba->mbox_mem_pool);
		if (phba->sli_rev == LPFC_SLI_REV4)
			FUNC4(phba, *rpi);
		return -ENOMEM;
	}

	dmabuff = (struct lpfc_dmabuf *) mbox->context1;
	mbox->context1 = NULL;
	mbox->context2 = NULL;
	status = FUNC5(phba, mbox, LPFC_MBOX_TMO);

	if ((status != MBX_SUCCESS) || (mbox->u.mb.mbxStatus)) {
		FUNC1(phba, dmabuff->virt, dmabuff->phys);
		FUNC0(dmabuff);
		if (status != MBX_TIMEOUT)
			FUNC7(mbox, phba->mbox_mem_pool);
		if (phba->sli_rev == LPFC_SLI_REV4)
			FUNC4(phba, *rpi);
		return -ENODEV;
	}

	if (phba->sli_rev < LPFC_SLI_REV4)
		*rpi = mbox->u.mb.un.varWords[0];

	FUNC1(phba, dmabuff->virt, dmabuff->phys);
	FUNC0(dmabuff);
	FUNC7(mbox, phba->mbox_mem_pool);
	return 0;
}