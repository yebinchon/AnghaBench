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
struct mlx4_ib_qp {int dummy; } ;
struct mlx4_ib_cq {int /*<<< orphan*/  lock; int /*<<< orphan*/  mcq; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx4_ib_cq*,struct mlx4_ib_qp**,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mlx4_ib_cq* FUNC4 (struct ib_cq*) ; 

int FUNC5(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
	struct mlx4_ib_cq *cq = FUNC4(ibcq);
	struct mlx4_ib_qp *cur_qp = NULL;
	unsigned long flags;
	int npolled;
	int err = 0;

	FUNC2(&cq->lock, flags);

	for (npolled = 0; npolled < num_entries; ++npolled) {
		err = FUNC1(cq, &cur_qp, wc + npolled);
		if (err)
			break;
	}

	FUNC0(&cq->mcq);

	FUNC3(&cq->lock, flags);

	if (err == 0 || err == -EAGAIN)
		return npolled;
	else
		return err;
}