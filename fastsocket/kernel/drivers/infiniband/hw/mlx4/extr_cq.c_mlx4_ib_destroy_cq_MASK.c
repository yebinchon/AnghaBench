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
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtt; } ;
struct mlx4_ib_cq {int /*<<< orphan*/  db; TYPE_2__ buf; int /*<<< orphan*/  umem; int /*<<< orphan*/  mcq; } ;
struct ib_cq {int /*<<< orphan*/  cqe; TYPE_1__* uobject; int /*<<< orphan*/  device; } ;
struct TYPE_3__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_ib_cq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_ib_dev*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mlx4_ib_cq* FUNC7 (struct ib_cq*) ; 
 struct mlx4_ib_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct ib_cq *cq)
{
	struct mlx4_ib_dev *dev = FUNC8(cq->device);
	struct mlx4_ib_cq *mcq = FUNC7(cq);

	FUNC2(dev->dev, &mcq->mcq);
	FUNC6(dev->dev, &mcq->buf.mtt);

	if (cq->uobject) {
		FUNC4(FUNC9(cq->uobject->context), &mcq->db);
		FUNC0(mcq->umem);
	} else {
		FUNC5(dev, &mcq->buf, cq->cqe);
		FUNC3(dev->dev, &mcq->db);
	}

	FUNC1(mcq);

	return 0;
}