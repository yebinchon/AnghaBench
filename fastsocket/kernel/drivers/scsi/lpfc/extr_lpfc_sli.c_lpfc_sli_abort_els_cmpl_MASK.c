#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct TYPE_5__ {size_t abortContextTag; size_t abortIoTag; } ;
struct TYPE_7__ {int /*<<< orphan*/ * ulpWord; TYPE_1__ acxri; } ;
struct TYPE_8__ {TYPE_3__ un; scalar_t__ ulpStatus; } ;
struct lpfc_iocbq {TYPE_4__ iocb; } ;
struct TYPE_6__ {size_t last_iotag; struct lpfc_iocbq** iocbq_lookup; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  hbalock; TYPE_2__ sli; } ;
typedef  TYPE_4__ IOCB_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 int LOG_ELS ; 
 int LOG_SLI ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,struct lpfc_iocbq*,size_t,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
			struct lpfc_iocbq *rspiocb)
{
	IOCB_t *irsp = &rspiocb->iocb;
	uint16_t abort_iotag, abort_context;
	struct lpfc_iocbq *abort_iocb = NULL;

	if (irsp->ulpStatus) {

		/*
		 * Assume that the port already completed and returned, or
		 * will return the iocb. Just Log the message.
		 */
		abort_context = cmdiocb->iocb.un.acxri.abortContextTag;
		abort_iotag = cmdiocb->iocb.un.acxri.abortIoTag;

		FUNC2(&phba->hbalock);
		if (phba->sli_rev < LPFC_SLI_REV4) {
			if (abort_iotag != 0 &&
				abort_iotag <= phba->sli.last_iotag)
				abort_iocb =
					phba->sli.iocbq_lookup[abort_iotag];
		} else
			/* For sli4 the abort_tag is the XRI,
			 * so the abort routine puts the iotag  of the iocb
			 * being aborted in the context field of the abort
			 * IOCB.
			 */
			abort_iocb = phba->sli.iocbq_lookup[abort_context];

		FUNC0(phba, KERN_WARNING, LOG_ELS | LOG_SLI,
				"0327 Cannot abort els iocb %p "
				"with tag %x context %x, abort status %x, "
				"abort code %x\n",
				abort_iocb, abort_iotag, abort_context,
				irsp->ulpStatus, irsp->un.ulpWord[4]);

		FUNC3(&phba->hbalock);
	}
	FUNC1(phba, cmdiocb);
	return;
}