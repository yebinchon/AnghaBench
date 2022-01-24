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
typedef  int /*<<< orphan*/  u32 ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_device {scalar_t__ regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  cq_number; } ;
struct nes_cq {TYPE_1__ hw_cq; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
typedef  enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;

/* Variables and functions */
 int EINVAL ; 
 int IB_CQ_NEXT_COMP ; 
 int IB_CQ_SOLICITED ; 
 int IB_CQ_SOLICITED_MASK ; 
 scalar_t__ NES_CQE_ALLOC ; 
 int /*<<< orphan*/  NES_CQE_ALLOC_NOTIFY_NEXT ; 
 int /*<<< orphan*/  NES_CQE_ALLOC_NOTIFY_SE ; 
 int /*<<< orphan*/  NES_DBG_CQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct nes_cq* FUNC3 (struct ib_cq*) ; 
 struct nes_vnic* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ib_cq *ibcq, enum ib_cq_notify_flags notify_flags)
		{
	struct nes_vnic *nesvnic = FUNC4(ibcq->device);
	struct nes_device *nesdev = nesvnic->nesdev;
	struct nes_cq *nescq = FUNC3(ibcq);
	u32 cq_arm;

	FUNC0(NES_DBG_CQ, "Requesting notification for CQ%u.\n",
			nescq->hw_cq.cq_number);

	cq_arm = nescq->hw_cq.cq_number;
	if ((notify_flags & IB_CQ_SOLICITED_MASK) == IB_CQ_NEXT_COMP)
		cq_arm |= NES_CQE_ALLOC_NOTIFY_NEXT;
	else if ((notify_flags & IB_CQ_SOLICITED_MASK) == IB_CQ_SOLICITED)
		cq_arm |= NES_CQE_ALLOC_NOTIFY_SE;
	else
		return -EINVAL;

	FUNC2(nesdev->regs+NES_CQE_ALLOC, cq_arm);
	FUNC1(nesdev->regs+NES_CQE_ALLOC);

	return 0;
}