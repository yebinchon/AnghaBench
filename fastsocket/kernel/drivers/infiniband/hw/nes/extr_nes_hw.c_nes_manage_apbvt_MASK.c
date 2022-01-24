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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_hw_cqp_wqe {int /*<<< orphan*/  wqe_words; } ;
struct nes_device {int dummy; } ;
struct nes_cqp_request {int waiting; scalar_t__ request_done; scalar_t__ major_code; int /*<<< orphan*/  minor_code; int /*<<< orphan*/  waitq; int /*<<< orphan*/  refcount; struct nes_hw_cqp_wqe cqp_wqe; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int ETIME ; 
 scalar_t__ NES_CQP_APBVT_ADD ; 
 scalar_t__ NES_CQP_APBVT_NIC_SHIFT ; 
 scalar_t__ NES_CQP_MANAGE_APBVT ; 
 int /*<<< orphan*/  NES_CQP_WQE_ID_IDX ; 
 int /*<<< orphan*/  NES_CQP_WQE_OPCODE_IDX ; 
 int /*<<< orphan*/  NES_DBG_QP ; 
 int /*<<< orphan*/  NES_EVENT_TIMEOUT ; 
 scalar_t__ NES_MANAGE_APBVT_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct nes_hw_cqp_wqe*,struct nes_device*) ; 
 struct nes_cqp_request* FUNC3 (struct nes_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nes_device*,struct nes_cqp_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct nes_device*,struct nes_cqp_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC8(struct nes_vnic *nesvnic, u32 accel_local_port,
		u32 nic_index, u32 add_port)
{
	struct nes_device *nesdev = nesvnic->nesdev;
	struct nes_hw_cqp_wqe *cqp_wqe;
	struct nes_cqp_request *cqp_request;
	int ret = 0;
	u16 major_code;

	/* Send manage APBVT request to CQP */
	cqp_request = FUNC3(nesdev);
	if (cqp_request == NULL) {
		FUNC1(NES_DBG_QP, "Failed to get a cqp_request.\n");
		return -ENOMEM;
	}
	cqp_request->waiting = 1;
	cqp_wqe = &cqp_request->cqp_wqe;

	FUNC1(NES_DBG_QP, "%s APBV for local port=%u(0x%04x), nic_index=%u\n",
			(add_port == NES_MANAGE_APBVT_ADD) ? "ADD" : "DEL",
			accel_local_port, accel_local_port, nic_index);

	FUNC2(cqp_wqe, nesdev);
	FUNC6(cqp_wqe->wqe_words, NES_CQP_WQE_OPCODE_IDX, (NES_CQP_MANAGE_APBVT |
			((add_port == NES_MANAGE_APBVT_ADD) ? NES_CQP_APBVT_ADD : 0)));
	FUNC6(cqp_wqe->wqe_words, NES_CQP_WQE_ID_IDX,
			((nic_index << NES_CQP_APBVT_NIC_SHIFT) | accel_local_port));

	FUNC1(NES_DBG_QP, "Waiting for CQP completion for APBVT.\n");

	FUNC0(&cqp_request->refcount, 2);
	FUNC4(nesdev, cqp_request);

	if (add_port == NES_MANAGE_APBVT_ADD)
		ret = FUNC7(cqp_request->waitq, (cqp_request->request_done != 0),
				NES_EVENT_TIMEOUT);
	FUNC1(NES_DBG_QP, "Completed, ret=%u,  CQP Major:Minor codes = 0x%04X:0x%04X\n",
			ret, cqp_request->major_code, cqp_request->minor_code);
	major_code = cqp_request->major_code;

	FUNC5(nesdev, cqp_request);

	if (!ret)
		return -ETIME;
	else if (major_code)
		return -EIO;
	else
		return 0;
}