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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct nes_device {TYPE_2__ cqp; int /*<<< orphan*/  cqp_avail_reqs; } ;
struct TYPE_3__ {int /*<<< orphan*/ * wqe_words; } ;
struct nes_cqp_request {int /*<<< orphan*/  list; scalar_t__ dynamic; TYPE_1__ cqp_wqe; } ;

/* Variables and functions */
 size_t NES_CQP_WQE_OPCODE_IDX ; 
 int /*<<< orphan*/  NES_DBG_CQP ; 
 int /*<<< orphan*/  FUNC0 (struct nes_cqp_request*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct nes_cqp_request*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct nes_device *nesdev,
			  struct nes_cqp_request *cqp_request)
{
	unsigned long flags;

	FUNC3(NES_DBG_CQP, "CQP request %p (opcode 0x%02X) freed.\n",
		  cqp_request,
		  FUNC1(cqp_request->cqp_wqe.wqe_words[NES_CQP_WQE_OPCODE_IDX]) & 0x3f);

	if (cqp_request->dynamic) {
		FUNC0(cqp_request);
	} else {
		FUNC4(&nesdev->cqp.lock, flags);
		FUNC2(&cqp_request->list, &nesdev->cqp_avail_reqs);
		FUNC5(&nesdev->cqp.lock, flags);
	}
}