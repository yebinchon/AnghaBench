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
struct lpfc_iocbq {int /*<<< orphan*/  list; int /*<<< orphan*/  iocb_flag; int /*<<< orphan*/ * fabric_iocb_cmpl; int /*<<< orphan*/ * iocb_cmpl; TYPE_1__* vport; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  fabric_iocb_list; int /*<<< orphan*/  fabric_iocb_count; int /*<<< orphan*/  bit_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FABRIC_COMANDS_BLOCKED ; 
 int IOCB_ERROR ; 
 int IOCB_SUCCESS ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_ELS_CMD ; 
 int /*<<< orphan*/  LPFC_ELS_RING ; 
 int /*<<< orphan*/  LPFC_IO_FABRIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lpfc_cmpl_fabric_iocb ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct lpfc_hba*,int /*<<< orphan*/ ,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct lpfc_hba *phba, struct lpfc_iocbq *iocb)
{
	unsigned long iflags;
	int ready;
	int ret;

	if (FUNC3(&phba->fabric_iocb_count) > 1)
		FUNC0();

	FUNC7(&phba->hbalock, iflags);
	ready = FUNC3(&phba->fabric_iocb_count) == 0 &&
		!FUNC9(FABRIC_COMANDS_BLOCKED, &phba->bit_flags);

	if (ready)
		/* Increment fabric iocb count to hold the position */
		FUNC2(&phba->fabric_iocb_count);
	FUNC8(&phba->hbalock, iflags);
	if (ready) {
		iocb->fabric_iocb_cmpl = iocb->iocb_cmpl;
		iocb->iocb_cmpl = lpfc_cmpl_fabric_iocb;
		iocb->iocb_flag |= LPFC_IO_FABRIC;

		FUNC5(iocb->vport, LPFC_DISC_TRC_ELS_CMD,
			"Fabric sched2:   ste:x%x",
			iocb->vport->port_state, 0, 0);

		ret = FUNC6(phba, LPFC_ELS_RING, iocb, 0);

		if (ret == IOCB_ERROR) {
			iocb->iocb_cmpl = iocb->fabric_iocb_cmpl;
			iocb->fabric_iocb_cmpl = NULL;
			iocb->iocb_flag &= ~LPFC_IO_FABRIC;
			FUNC1(&phba->fabric_iocb_count);
		}
	} else {
		FUNC7(&phba->hbalock, iflags);
		FUNC4(&iocb->list, &phba->fabric_iocb_list);
		FUNC8(&phba->hbalock, iflags);
		ret = IOCB_SUCCESS;
	}
	return ret;
}