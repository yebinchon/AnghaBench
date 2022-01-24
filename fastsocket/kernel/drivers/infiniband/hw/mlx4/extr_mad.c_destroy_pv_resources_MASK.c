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
struct mlx4_ib_dev {int dummy; } ;
struct mlx4_ib_demux_pv_ctx {scalar_t__ state; int /*<<< orphan*/ * cq; int /*<<< orphan*/ * pd; int /*<<< orphan*/ * mr; TYPE_1__* qp; scalar_t__ has_smi; int /*<<< orphan*/  wq; } ;
struct TYPE_2__ {int /*<<< orphan*/ * qp; } ;

/* Variables and functions */
 scalar_t__ DEMUX_PV_STATE_DOWN ; 
 scalar_t__ DEMUX_PV_STATE_DOWNING ; 
 int /*<<< orphan*/  IB_QPT_GSI ; 
 int /*<<< orphan*/  IB_QPT_SMI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_ib_demux_pv_ctx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct mlx4_ib_dev *dev, int slave, int port,
				 struct mlx4_ib_demux_pv_ctx *ctx, int flush)
{
	if (!ctx)
		return;
	if (ctx->state > DEMUX_PV_STATE_DOWN) {
		ctx->state = DEMUX_PV_STATE_DOWNING;
		if (flush)
			FUNC0(ctx->wq);
		if (ctx->has_smi) {
			FUNC4(ctx->qp[0].qp);
			ctx->qp[0].qp = NULL;
			FUNC5(ctx, IB_QPT_SMI, 1);
		}
		FUNC4(ctx->qp[1].qp);
		ctx->qp[1].qp = NULL;
		FUNC5(ctx, IB_QPT_GSI, 1);
		FUNC2(ctx->mr);
		ctx->mr = NULL;
		FUNC1(ctx->pd);
		ctx->pd = NULL;
		FUNC3(ctx->cq);
		ctx->cq = NULL;
		ctx->state = DEMUX_PV_STATE_DOWN;
	}
}