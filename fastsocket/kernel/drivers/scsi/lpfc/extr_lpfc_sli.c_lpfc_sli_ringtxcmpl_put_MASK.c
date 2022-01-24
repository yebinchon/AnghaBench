#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lpfc_sli_ring {scalar_t__ ringno; int /*<<< orphan*/  txcmplq; } ;
struct TYPE_3__ {scalar_t__ ulpCommand; } ;
struct lpfc_iocbq {TYPE_2__* vport; TYPE_1__ iocb; int /*<<< orphan*/  iocb_flag; int /*<<< orphan*/  list; } ;
struct lpfc_hba {int fc_ratov; } ;
struct TYPE_4__ {int /*<<< orphan*/  els_tmofunc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ CMD_ABORT_XRI_CN ; 
 scalar_t__ CMD_CLOSE_XRI_CN ; 
 scalar_t__ LPFC_ELS_RING ; 
 int /*<<< orphan*/  LPFC_IO_ON_TXCMPLQ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
			struct lpfc_iocbq *piocb)
{
	FUNC1(&piocb->list, &pring->txcmplq);
	piocb->iocb_flag |= LPFC_IO_ON_TXCMPLQ;

	if ((FUNC4(pring->ringno == LPFC_ELS_RING)) &&
	   (piocb->iocb.ulpCommand != CMD_ABORT_XRI_CN) &&
	   (piocb->iocb.ulpCommand != CMD_CLOSE_XRI_CN)) {
		if (!piocb->vport)
			FUNC0();
		else
			FUNC2(&piocb->vport->els_tmofunc,
				jiffies +
				FUNC3(1000 * (phba->fc_ratov << 1)));
	}


	return 0;
}