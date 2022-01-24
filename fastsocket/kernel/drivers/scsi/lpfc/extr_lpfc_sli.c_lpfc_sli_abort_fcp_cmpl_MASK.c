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
struct TYPE_4__ {int /*<<< orphan*/  abortIoTag; int /*<<< orphan*/  abortContextTag; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ulpWord; TYPE_1__ acxri; } ;
struct TYPE_6__ {TYPE_2__ un; int /*<<< orphan*/  ulpStatus; } ;
struct lpfc_iocbq {TYPE_3__ iocb; int /*<<< orphan*/  iotag; } ;
struct lpfc_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_iocbq*) ; 

void
FUNC2(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
			struct lpfc_iocbq *rspiocb)
{
	FUNC0(phba, KERN_INFO, LOG_SLI,
			"3096 ABORT_XRI_CN completing on rpi x%x "
			"original iotag x%x, abort cmd iotag x%x "
			"status 0x%x, reason 0x%x\n",
			cmdiocb->iocb.un.acxri.abortContextTag,
			cmdiocb->iocb.un.acxri.abortIoTag,
			cmdiocb->iotag, rspiocb->iocb.ulpStatus,
			rspiocb->iocb.un.ulpWord[4]);
	FUNC1(phba, cmdiocb);
	return;
}