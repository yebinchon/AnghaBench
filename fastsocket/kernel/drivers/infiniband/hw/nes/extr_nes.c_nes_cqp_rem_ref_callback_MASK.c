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
struct TYPE_2__ {size_t qp_id; int /*<<< orphan*/  sq_pbase; int /*<<< orphan*/ * sq_vbase; int /*<<< orphan*/  q2_pbase; int /*<<< orphan*/ * q2_vbase; } ;
struct nes_qp {int qp_mem_size; int /*<<< orphan*/  allocated_buffer; TYPE_1__ hwqp; int /*<<< orphan*/ * pbl_vbase; int /*<<< orphan*/  pbl_pbase; } ;
struct nes_device {int /*<<< orphan*/  pcidev; struct nes_adapter* nesadapter; } ;
struct nes_cqp_request {struct nes_qp* cqp_callback_pointer; } ;
struct nes_adapter {int /*<<< orphan*/ ** qp_table; int /*<<< orphan*/  allocated_qps; int /*<<< orphan*/  pbl_lock; int /*<<< orphan*/  free_256pbl; } ;

/* Variables and functions */
 size_t NES_FIRST_QPN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nes_adapter*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qps_destroyed ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct nes_device *nesdev, struct nes_cqp_request *cqp_request)
{
	unsigned long flags;
	struct nes_qp *nesqp = cqp_request->cqp_callback_pointer;
	struct nes_adapter *nesadapter = nesdev->nesadapter;

	FUNC0(&qps_destroyed);

	/* Free the control structures */

	if (nesqp->pbl_vbase) {
		FUNC3(nesdev->pcidev, nesqp->qp_mem_size,
				nesqp->hwqp.q2_vbase, nesqp->hwqp.q2_pbase);
		FUNC4(&nesadapter->pbl_lock, flags);
		nesadapter->free_256pbl++;
		FUNC5(&nesadapter->pbl_lock, flags);
		FUNC3(nesdev->pcidev, 256, nesqp->pbl_vbase, nesqp->pbl_pbase);
		nesqp->pbl_vbase = NULL;

	} else {
		FUNC3(nesdev->pcidev, nesqp->qp_mem_size,
				nesqp->hwqp.sq_vbase, nesqp->hwqp.sq_pbase);
	}
	FUNC2(nesadapter, nesadapter->allocated_qps, nesqp->hwqp.qp_id);

	nesadapter->qp_table[nesqp->hwqp.qp_id-NES_FIRST_QPN] = NULL;
	FUNC1(nesqp->allocated_buffer);

}