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
struct phys_addr {int dummy; } ;
struct hwi_controller {struct hwi_context_memory* phwi_ctxt; } ;
struct hwi_context_memory {int cur_eqd; scalar_t__ min_eqd; scalar_t__ max_eqd; } ;
struct be_ctrl_info {int dummy; } ;
struct TYPE_2__ {int asyncpdus_per_ctrl; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; struct hwi_controller* phwi_ctrlr; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct be_ctrl_info*) ; 
 int FUNC1 (struct beiscsi_hba*,struct hwi_context_memory*) ; 
 int FUNC2 (struct beiscsi_hba*,struct hwi_context_memory*) ; 
 int FUNC3 (struct beiscsi_hba*,struct hwi_context_memory*,struct hwi_controller*,unsigned int) ; 
 int FUNC4 (struct beiscsi_hba*,struct hwi_context_memory*,struct hwi_controller*,unsigned int) ; 
 int FUNC5 (struct beiscsi_hba*,struct hwi_context_memory*) ; 
 int FUNC6 (struct beiscsi_hba*,struct hwi_context_memory*,struct hwi_controller*) ; 
 int /*<<< orphan*/  FUNC7 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct beiscsi_hba*) ; 
 int FUNC10 (struct be_ctrl_info*,struct beiscsi_hba*) ; 

__attribute__((used)) static int FUNC11(struct beiscsi_hba *phba)
{
	struct hwi_controller *phwi_ctrlr;
	struct hwi_context_memory *phwi_context;
	unsigned int def_pdu_ring_sz;
	struct be_ctrl_info *ctrl = &phba->ctrl;
	int status;

	def_pdu_ring_sz =
		phba->params.asyncpdus_per_ctrl * sizeof(struct phys_addr);
	phwi_ctrlr = phba->phwi_ctrlr;
	phwi_context = phwi_ctrlr->phwi_ctxt;
	phwi_context->max_eqd = 0;
	phwi_context->min_eqd = 0;
	phwi_context->cur_eqd = 64;
	FUNC0(&phba->ctrl);

	status = FUNC5(phba, phwi_context);
	if (status != 0) {
		FUNC7(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : EQ not created\n");
		goto error;
	}

	status = FUNC1(phba, phwi_context);
	if (status != 0)
		goto error;

	status = FUNC10(ctrl, phba);
	if (status != 0) {
		FUNC7(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : Unsupported fw version\n");
		goto error;
	}

	status = FUNC2(phba, phwi_context);
	if (status != 0) {
		FUNC7(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : CQ not created\n");
		goto error;
	}

	status = FUNC4(phba, phwi_context, phwi_ctrlr,
					def_pdu_ring_sz);
	if (status != 0) {
		FUNC7(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : Default Header not created\n");
		goto error;
	}

	status = FUNC3(phba, phwi_context,
					 phwi_ctrlr, def_pdu_ring_sz);
	if (status != 0) {
		FUNC7(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : Default Data not created\n");
		goto error;
	}

	status = FUNC8(phba);
	if (status != 0) {
		FUNC7(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : Post SGL Pages Failed\n");
		goto error;
	}

	status = FUNC6(phba,	phwi_context, phwi_ctrlr);
	if (status != 0) {
		FUNC7(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : WRB Rings not created\n");
		goto error;
	}

	FUNC7(phba, KERN_INFO, BEISCSI_LOG_INIT,
		    "BM_%d : hwi_init_port success\n");
	return 0;

error:
	FUNC7(phba, KERN_ERR, BEISCSI_LOG_INIT,
		    "BM_%d : hwi_init_port failed");
	FUNC9(phba);
	return status;
}