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
struct TYPE_2__ {int /*<<< orphan*/  max_gs; scalar_t__ max; } ;
struct mlx4_ib_srq {TYPE_1__ msrq; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct ib_srq_attr {int srq_limit; int /*<<< orphan*/  max_sge; scalar_t__ max_wr; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 struct mlx4_ib_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_srq* FUNC2 (struct ib_srq*) ; 

int FUNC3(struct ib_srq *ibsrq, struct ib_srq_attr *srq_attr)
{
	struct mlx4_ib_dev *dev = FUNC1(ibsrq->device);
	struct mlx4_ib_srq *srq = FUNC2(ibsrq);
	int ret;
	int limit_watermark;

	ret = FUNC0(dev->dev, &srq->msrq, &limit_watermark);
	if (ret)
		return ret;

	srq_attr->srq_limit = limit_watermark;
	srq_attr->max_wr    = srq->msrq.max - 1;
	srq_attr->max_sge   = srq->msrq.max_gs;

	return 0;
}