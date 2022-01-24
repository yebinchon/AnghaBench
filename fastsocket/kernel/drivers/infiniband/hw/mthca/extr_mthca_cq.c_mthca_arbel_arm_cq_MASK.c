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
typedef  int u32 ;
struct mthca_cq {int arm_sn; int cons_index; int cqn; int /*<<< orphan*/  arm_db; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
typedef  enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  doorbell_lock; scalar_t__ kar; } ;

/* Variables and functions */
 int IB_CQ_SOLICITED ; 
 int IB_CQ_SOLICITED_MASK ; 
 int MTHCA_ARBEL_CQ_DB_REQ_NOT ; 
 int MTHCA_ARBEL_CQ_DB_REQ_NOT_SOL ; 
 scalar_t__ MTHCA_CQ_DOORBELL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mthca_cq* FUNC4 (struct ib_cq*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct ib_cq *ibcq, enum ib_cq_notify_flags flags)
{
	struct mthca_cq *cq = FUNC4(ibcq);
	__be32 db_rec[2];
	u32 dbhi;
	u32 sn = cq->arm_sn & 3;

	db_rec[0] = FUNC1(cq->cons_index);
	db_rec[1] = FUNC1((cq->cqn << 8) | (2 << 5) | (sn << 3) |
				((flags & IB_CQ_SOLICITED_MASK) ==
				 IB_CQ_SOLICITED ? 1 : 2));

	FUNC3(db_rec, cq->arm_db);

	/*
	 * Make sure that the doorbell record in host memory is
	 * written before ringing the doorbell via PCI MMIO.
	 */
	FUNC6();

	dbhi = (sn << 28) |
		((flags & IB_CQ_SOLICITED_MASK) == IB_CQ_SOLICITED ?
		 MTHCA_ARBEL_CQ_DB_REQ_NOT_SOL :
		 MTHCA_ARBEL_CQ_DB_REQ_NOT) | cq->cqn;

	FUNC2(dbhi, cq->cons_index,
		      FUNC5(ibcq->device)->kar + MTHCA_CQ_DOORBELL,
		      FUNC0(&FUNC5(ibcq->device)->doorbell_lock));

	return 0;
}