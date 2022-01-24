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
struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_mr {int dummy; } ;
struct nes_hw_cqp_wqe {int /*<<< orphan*/  wqe_words; } ;
struct nes_device {struct nes_adapter* nesadapter; } ;
struct nes_cqp_request {int waiting; scalar_t__ request_done; scalar_t__ major_code; int /*<<< orphan*/  minor_code; int /*<<< orphan*/  waitq; int /*<<< orphan*/  refcount; struct nes_hw_cqp_wqe cqp_wqe; } ;
struct nes_adapter {int /*<<< orphan*/  allocated_mrs; } ;
struct ib_mw {int rkey; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int ETIME ; 
 int NES_CQP_DEALLOCATE_STAG ; 
 int /*<<< orphan*/  NES_CQP_STAG_WQE_STAG_IDX ; 
 int /*<<< orphan*/  NES_CQP_WQE_OPCODE_IDX ; 
 int /*<<< orphan*/  NES_DBG_MR ; 
 int /*<<< orphan*/  NES_EVENT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nes_mr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct nes_hw_cqp_wqe*,struct nes_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nes_adapter*,int /*<<< orphan*/ ,int) ; 
 struct nes_cqp_request* FUNC5 (struct nes_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct nes_device*,struct nes_cqp_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct nes_device*,struct nes_cqp_request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct nes_mr* FUNC9 (struct ib_mw*) ; 
 struct nes_vnic* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct ib_mw *ibmw)
{
	struct nes_mr *nesmr = FUNC9(ibmw);
	struct nes_vnic *nesvnic = FUNC10(ibmw->device);
	struct nes_device *nesdev = nesvnic->nesdev;
	struct nes_adapter *nesadapter = nesdev->nesadapter;
	struct nes_hw_cqp_wqe *cqp_wqe;
	struct nes_cqp_request *cqp_request;
	int err = 0;
	int ret;

	/* Deallocate the window with the adapter */
	cqp_request = FUNC5(nesdev);
	if (cqp_request == NULL) {
		FUNC2(NES_DBG_MR, "Failed to get a cqp_request.\n");
		return -ENOMEM;
	}
	cqp_request->waiting = 1;
	cqp_wqe = &cqp_request->cqp_wqe;
	FUNC3(cqp_wqe, nesdev);
	FUNC8(cqp_wqe->wqe_words, NES_CQP_WQE_OPCODE_IDX, NES_CQP_DEALLOCATE_STAG);
	FUNC8(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_STAG_IDX, ibmw->rkey);

	FUNC0(&cqp_request->refcount, 2);
	FUNC6(nesdev, cqp_request);

	/* Wait for CQP */
	FUNC2(NES_DBG_MR, "Waiting for deallocate STag 0x%08X to complete.\n",
			ibmw->rkey);
	ret = FUNC11(cqp_request->waitq, (0 != cqp_request->request_done),
			NES_EVENT_TIMEOUT);
	FUNC2(NES_DBG_MR, "Deallocate STag completed, wait_event_timeout ret = %u,"
			" CQP Major:Minor codes = 0x%04X:0x%04X.\n",
			ret, cqp_request->major_code, cqp_request->minor_code);
	if (!ret)
		err = -ETIME;
	else if (cqp_request->major_code)
		err = -EIO;

	FUNC7(nesdev, cqp_request);

	FUNC4(nesadapter, nesadapter->allocated_mrs,
			(ibmw->rkey & 0x0fffff00) >> 8);
	FUNC1(nesmr);

	return err;
}