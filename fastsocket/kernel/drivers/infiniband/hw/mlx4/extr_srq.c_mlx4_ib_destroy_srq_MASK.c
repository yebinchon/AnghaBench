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
struct TYPE_4__ {int max; int wqe_shift; } ;
struct mlx4_ib_srq {int /*<<< orphan*/  db; int /*<<< orphan*/  buf; TYPE_2__ msrq; struct mlx4_ib_srq* wrid; int /*<<< orphan*/  umem; int /*<<< orphan*/  mtt; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct ib_srq {TYPE_1__* uobject; int /*<<< orphan*/  device; } ;
struct TYPE_3__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_ib_srq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct mlx4_ib_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_srq* FUNC8 (struct ib_srq*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct ib_srq *srq)
{
	struct mlx4_ib_dev *dev = FUNC7(srq->device);
	struct mlx4_ib_srq *msrq = FUNC8(srq);

	FUNC6(dev->dev, &msrq->msrq);
	FUNC5(dev->dev, &msrq->mtt);

	if (srq->uobject) {
		FUNC4(FUNC9(srq->uobject->context), &msrq->db);
		FUNC0(msrq->umem);
	} else {
		FUNC1(msrq->wrid);
		FUNC2(dev->dev, msrq->msrq.max << msrq->msrq.wqe_shift,
			      &msrq->buf);
		FUNC3(dev->dev, &msrq->db);
	}

	FUNC1(msrq);

	return 0;
}