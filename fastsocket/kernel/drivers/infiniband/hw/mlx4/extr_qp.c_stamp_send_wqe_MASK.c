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
struct mlx4_wqe_ctrl_seg {int fence_size; } ;
struct TYPE_2__ {unsigned int wqe_shift; int wqe_cnt; } ;
struct mlx4_ib_qp {int sq_max_wqes_per_wr; TYPE_1__ sq; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (struct mlx4_ib_qp*,int) ; 
 int FUNC2 (int,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct mlx4_ib_qp *qp, int n, int size)
{
	__be32 *wqe;
	int i;
	int s;
	int ind;
	void *buf;
	__be32 stamp;
	struct mlx4_wqe_ctrl_seg *ctrl;

	if (qp->sq_max_wqes_per_wr > 1) {
		s = FUNC2(size, 1U << qp->sq.wqe_shift);
		for (i = 0; i < s; i += 64) {
			ind = (i >> qp->sq.wqe_shift) + n;
			stamp = ind & qp->sq.wqe_cnt ? FUNC0(0x7fffffff) :
						       FUNC0(0xffffffff);
			buf = FUNC1(qp, ind & (qp->sq.wqe_cnt - 1));
			wqe = buf + (i & ((1 << qp->sq.wqe_shift) - 1));
			*wqe = stamp;
		}
	} else {
		ctrl = buf = FUNC1(qp, n & (qp->sq.wqe_cnt - 1));
		s = (ctrl->fence_size & 0x3f) << 4;
		for (i = 64; i < s; i += 64) {
			wqe = buf + i;
			*wqe = FUNC0(0xffffffff);
		}
	}
}