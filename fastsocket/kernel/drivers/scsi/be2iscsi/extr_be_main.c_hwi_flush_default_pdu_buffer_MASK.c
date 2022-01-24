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
struct i_t_dpdu_cqe {int dummy; } ;
struct hwi_controller {int dummy; } ;
struct hwi_async_pdu_context {int dummy; } ;
struct beiscsi_hba {struct hwi_controller* phwi_ctrlr; } ;
struct beiscsi_conn {int dummy; } ;
struct async_pdu_handle {scalar_t__ is_header; scalar_t__ consumed; int /*<<< orphan*/  cri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct hwi_async_pdu_context* FUNC1 (struct hwi_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,int /*<<< orphan*/ ) ; 
 struct async_pdu_handle* FUNC3 (struct beiscsi_hba*,struct beiscsi_conn*,struct hwi_async_pdu_context*,struct i_t_dpdu_cqe*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_hba*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct beiscsi_hba*,struct hwi_async_pdu_context*,scalar_t__,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct beiscsi_hba *phba,
					 struct beiscsi_conn *beiscsi_conn,
					 struct i_t_dpdu_cqe *pdpdu_cqe)
{
	struct hwi_controller *phwi_ctrlr;
	struct hwi_async_pdu_context *pasync_ctx;
	struct async_pdu_handle *pasync_handle = NULL;
	unsigned int cq_index = -1;

	phwi_ctrlr = phba->phwi_ctrlr;
	pasync_ctx = FUNC1(phwi_ctrlr);

	pasync_handle = FUNC3(phba, beiscsi_conn, pasync_ctx,
					     pdpdu_cqe, &cq_index);
	FUNC0(pasync_handle->is_header != 0);
	if (pasync_handle->consumed == 0)
		FUNC5(phba, pasync_ctx,
					   pasync_handle->is_header, cq_index);

	FUNC2(phba, pasync_handle->cri);
	FUNC4(phba, pasync_handle->is_header);
}