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
struct wrb_handle {unsigned int wrb_index; struct wrb_handle* pwrb; } ;
struct iscsi_wrb {unsigned int wrb_index; struct iscsi_wrb* pwrb; } ;
struct hwi_wrb_context {struct wrb_handle** pwrb_handle_basestd; struct wrb_handle** pwrb_handle_base; scalar_t__ wrb_handles_available; scalar_t__ free_index; scalar_t__ alloc_index; } ;
struct hwi_controller {struct hwi_wrb_context* wrb_context; struct hwi_context_memory* phwi_ctxt; } ;
struct hwi_context_memory {void* be_wrbq; } ;
struct TYPE_6__ {unsigned int cxns_per_ctrl; int wrbs_per_cxn; } ;
struct TYPE_4__ {int iscsi_cid_count; } ;
struct beiscsi_hba {TYPE_3__ params; TYPE_1__ fw_config; struct hwi_controller* phwi_ctrlr; struct be_mem_descriptor* init_mem; } ;
struct be_queue_info {int dummy; } ;
struct be_mem_descriptor {TYPE_2__* mem_array; } ;
struct TYPE_5__ {int size; struct wrb_handle* virtual_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HWI_MEM_WRB ; 
 int /*<<< orphan*/  HWI_MEM_WRBH ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wrb_handle**) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct beiscsi_hba *phba)
{
	struct be_mem_descriptor *mem_descr_wrbh, *mem_descr_wrb;
	struct hwi_context_memory *phwi_ctxt;
	struct wrb_handle *pwrb_handle = NULL;
	struct hwi_controller *phwi_ctrlr;
	struct hwi_wrb_context *pwrb_context;
	struct iscsi_wrb *pwrb = NULL;
	unsigned int num_cxn_wrbh = 0;
	unsigned int num_cxn_wrb = 0, j, idx = 0, index;

	mem_descr_wrbh = phba->init_mem;
	mem_descr_wrbh += HWI_MEM_WRBH;

	mem_descr_wrb = phba->init_mem;
	mem_descr_wrb += HWI_MEM_WRB;
	phwi_ctrlr = phba->phwi_ctrlr;

	/* Allocate memory for WRBQ */
	phwi_ctxt = phwi_ctrlr->phwi_ctxt;
	phwi_ctxt->be_wrbq = FUNC2(sizeof(struct be_queue_info) *
				     phba->fw_config.iscsi_cid_count,
				     GFP_KERNEL);
	if (!phwi_ctxt->be_wrbq) {
		FUNC0(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : WRBQ Mem Alloc Failed\n");
		return -ENOMEM;
	}

	for (index = 0; index < phba->params.cxns_per_ctrl; index++) {
		pwrb_context = &phwi_ctrlr->wrb_context[index];
		pwrb_context->pwrb_handle_base =
				FUNC2(sizeof(struct wrb_handle *) *
					phba->params.wrbs_per_cxn, GFP_KERNEL);
		if (!pwrb_context->pwrb_handle_base) {
			FUNC0(phba, KERN_ERR, BEISCSI_LOG_INIT,
				    "BM_%d : Mem Alloc Failed. Failing to load\n");
			goto init_wrb_hndl_failed;
		}
		pwrb_context->pwrb_handle_basestd =
				FUNC2(sizeof(struct wrb_handle *) *
					phba->params.wrbs_per_cxn, GFP_KERNEL);
		if (!pwrb_context->pwrb_handle_basestd) {
			FUNC0(phba, KERN_ERR, BEISCSI_LOG_INIT,
				    "BM_%d : Mem Alloc Failed. Failing to load\n");
			goto init_wrb_hndl_failed;
		}
		if (!num_cxn_wrbh) {
			pwrb_handle =
				mem_descr_wrbh->mem_array[idx].virtual_address;
			num_cxn_wrbh = ((mem_descr_wrbh->mem_array[idx].size) /
					((sizeof(struct wrb_handle)) *
					 phba->params.wrbs_per_cxn));
			idx++;
		}
		pwrb_context->alloc_index = 0;
		pwrb_context->wrb_handles_available = 0;
		pwrb_context->free_index = 0;

		if (num_cxn_wrbh) {
			for (j = 0; j < phba->params.wrbs_per_cxn; j++) {
				pwrb_context->pwrb_handle_base[j] = pwrb_handle;
				pwrb_context->pwrb_handle_basestd[j] =
								pwrb_handle;
				pwrb_context->wrb_handles_available++;
				pwrb_handle->wrb_index = j;
				pwrb_handle++;
			}
			num_cxn_wrbh--;
		}
	}
	idx = 0;
	for (index = 0; index < phba->params.cxns_per_ctrl; index++) {
		pwrb_context = &phwi_ctrlr->wrb_context[index];
		if (!num_cxn_wrb) {
			pwrb = mem_descr_wrb->mem_array[idx].virtual_address;
			num_cxn_wrb = (mem_descr_wrb->mem_array[idx].size) /
				((sizeof(struct iscsi_wrb) *
				  phba->params.wrbs_per_cxn));
			idx++;
		}

		if (num_cxn_wrb) {
			for (j = 0; j < phba->params.wrbs_per_cxn; j++) {
				pwrb_handle = pwrb_context->pwrb_handle_base[j];
				pwrb_handle->pwrb = pwrb;
				pwrb++;
			}
			num_cxn_wrb--;
		}
	}
	return 0;
init_wrb_hndl_failed:
	for (j = index; j > 0; j--) {
		pwrb_context = &phwi_ctrlr->wrb_context[j];
		FUNC1(pwrb_context->pwrb_handle_base);
		FUNC1(pwrb_context->pwrb_handle_basestd);
	}
	return -ENOMEM;
}