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
struct TYPE_3__ {int wqe_cnt; } ;
struct mlx4_ib_qp {TYPE_2__* sqp_proxy_rcv; TYPE_1__ rq; } ;
struct mlx4_ib_proxy_sqp_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* addr; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(struct ib_device *dev, struct mlx4_ib_qp *qp)
{
	int i;

	for (i = 0; i < qp->rq.wqe_cnt; i++) {
		FUNC0(dev, qp->sqp_proxy_rcv[i].map,
				    sizeof (struct mlx4_ib_proxy_sqp_hdr),
				    DMA_FROM_DEVICE);
		FUNC1(qp->sqp_proxy_rcv[i].addr);
	}
	FUNC1(qp->sqp_proxy_rcv);
}