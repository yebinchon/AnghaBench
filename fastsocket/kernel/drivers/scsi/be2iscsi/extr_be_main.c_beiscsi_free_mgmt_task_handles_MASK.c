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
typedef  size_t uint16_t ;
struct iscsi_wrb {int dummy; } ;
struct iscsi_task {struct beiscsi_io_task* dd_data; } ;
struct hwi_wrb_context {int dummy; } ;
struct hwi_controller {struct hwi_wrb_context* wrb_context; } ;
struct beiscsi_io_task {int /*<<< orphan*/  mtask_data_count; scalar_t__ mtask_addr; int /*<<< orphan*/ * psgl_handle; TYPE_1__* pwrb_handle; } ;
struct beiscsi_hba {int /*<<< orphan*/  pcidev; int /*<<< orphan*/  mgmt_sgl_lock; struct hwi_controller* phwi_ctrlr; } ;
struct beiscsi_conn {int /*<<< orphan*/  beiscsi_conn_cid; struct beiscsi_hba* phba; } ;
struct TYPE_2__ {int /*<<< orphan*/  pwrb; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,struct hwi_wrb_context*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct beiscsi_conn *beiscsi_conn,
				struct iscsi_task *task)
{
	struct beiscsi_io_task *io_task;
	struct beiscsi_hba *phba = beiscsi_conn->phba;
	struct hwi_wrb_context *pwrb_context;
	struct hwi_controller *phwi_ctrlr;
	uint16_t cri_index = FUNC0(
				beiscsi_conn->beiscsi_conn_cid);

	phwi_ctrlr = phba->phwi_ctrlr;
	pwrb_context = &phwi_ctrlr->wrb_context[cri_index];

	io_task = task->dd_data;

	if (io_task->pwrb_handle) {
		FUNC3(io_task->pwrb_handle->pwrb, 0,
		       sizeof(struct iscsi_wrb));
		FUNC2(phba, pwrb_context,
				io_task->pwrb_handle);
		io_task->pwrb_handle = NULL;
	}

	if (io_task->psgl_handle) {
		FUNC5(&phba->mgmt_sgl_lock);
		FUNC1(phba,
				     io_task->psgl_handle);
		io_task->psgl_handle = NULL;
		FUNC6(&phba->mgmt_sgl_lock);
	}

	if (io_task->mtask_addr)
		FUNC4(phba->pcidev,
				 io_task->mtask_addr,
				 io_task->mtask_data_count,
				 PCI_DMA_TODEVICE);
}