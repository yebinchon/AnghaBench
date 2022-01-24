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
struct lpfc_hba {int /*<<< orphan*/  fcf_conn_rec_list; int /*<<< orphan*/  elsbuf; int /*<<< orphan*/  fabric_iocb_list; int /*<<< orphan*/  lpfc_scsi_buf_list_put; int /*<<< orphan*/  scsi_buf_list_put_lock; int /*<<< orphan*/  lpfc_scsi_buf_list_get; int /*<<< orphan*/  scsi_buf_list_get_lock; int /*<<< orphan*/  work_waitq; int /*<<< orphan*/  wait_4_mlo_m_q; int /*<<< orphan*/  work_list; int /*<<< orphan*/  port_list; int /*<<< orphan*/  ndlp_lock; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  fast_event_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct lpfc_hba *phba)
{
	/*
	 * Driver resources common to all SLI revisions
	 */
	FUNC1(&phba->fast_event_count, 0);
	FUNC3(&phba->hbalock);

	/* Initialize ndlp management spinlock */
	FUNC3(&phba->ndlp_lock);

	FUNC0(&phba->port_list);
	FUNC0(&phba->work_list);
	FUNC2(&phba->wait_4_mlo_m_q);

	/* Initialize the wait queue head for the kernel thread */
	FUNC2(&phba->work_waitq);

	/* Initialize the scsi buffer list used by driver for scsi IO */
	FUNC3(&phba->scsi_buf_list_get_lock);
	FUNC0(&phba->lpfc_scsi_buf_list_get);
	FUNC3(&phba->scsi_buf_list_put_lock);
	FUNC0(&phba->lpfc_scsi_buf_list_put);

	/* Initialize the fabric iocb list */
	FUNC0(&phba->fabric_iocb_list);

	/* Initialize list to save ELS buffers */
	FUNC0(&phba->elsbuf);

	/* Initialize FCF connection rec list */
	FUNC0(&phba->fcf_conn_rec_list);

	return 0;
}