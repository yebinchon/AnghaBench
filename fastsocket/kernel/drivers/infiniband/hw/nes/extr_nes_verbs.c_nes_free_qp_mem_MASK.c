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
struct TYPE_2__ {int /*<<< orphan*/  q2_pbase; int /*<<< orphan*/ * q2_vbase; int /*<<< orphan*/  sq_pbase; int /*<<< orphan*/ * sq_vbase; } ;
struct nes_qp {int qp_mem_size; int /*<<< orphan*/  page; scalar_t__ sq_kmapped; int /*<<< orphan*/ * pbl_vbase; int /*<<< orphan*/  pbl_pbase; TYPE_1__ hwqp; } ;
struct nes_device {int /*<<< orphan*/  pcidev; struct nes_adapter* nesadapter; } ;
struct nes_adapter {int /*<<< orphan*/  pbl_lock; int /*<<< orphan*/  free_256pbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct nes_device *nesdev,
		struct nes_qp *nesqp, int virt_wqs)
{
	unsigned long flags;
	struct nes_adapter *nesadapter = nesdev->nesadapter;
	if (!virt_wqs) {
		FUNC1(nesdev->pcidev, nesqp->qp_mem_size,
				nesqp->hwqp.sq_vbase, nesqp->hwqp.sq_pbase);
	}else {
		FUNC2(&nesadapter->pbl_lock, flags);
		nesadapter->free_256pbl++;
		FUNC3(&nesadapter->pbl_lock, flags);
		FUNC1(nesdev->pcidev, nesqp->qp_mem_size, nesqp->hwqp.q2_vbase, nesqp->hwqp.q2_pbase);
		FUNC1(nesdev->pcidev, 256, nesqp->pbl_vbase, nesqp->pbl_pbase );
		nesqp->pbl_vbase = NULL;
		if (nesqp->sq_kmapped) {
			nesqp->sq_kmapped = 0;
			FUNC0(nesqp->page);
		}
	}
}