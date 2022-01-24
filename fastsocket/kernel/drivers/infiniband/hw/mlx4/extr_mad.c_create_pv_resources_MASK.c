#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlx4_ib_demux_pv_ctx {scalar_t__ state; scalar_t__ slave; int has_smi; int /*<<< orphan*/ * cq; int /*<<< orphan*/ * pd; int /*<<< orphan*/ * mr; TYPE_3__* qp; int /*<<< orphan*/ * wq; int /*<<< orphan*/  work; struct ib_device* ib_dev; int /*<<< orphan*/  port; } ;
struct ib_device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* demux; } ;
struct TYPE_8__ {TYPE_2__ sriov; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * qp; } ;
struct TYPE_5__ {int /*<<< orphan*/ * wq; } ;

/* Variables and functions */
 scalar_t__ DEMUX_PV_STATE_ACTIVE ; 
 scalar_t__ DEMUX_PV_STATE_DOWN ; 
 scalar_t__ DEMUX_PV_STATE_STARTING ; 
 int EEXIST ; 
 int /*<<< orphan*/  IB_ACCESS_LOCAL_WRITE ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 scalar_t__ IB_LINK_LAYER_INFINIBAND ; 
 int /*<<< orphan*/  IB_QPT_GSI ; 
 int /*<<< orphan*/  IB_QPT_SMI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int MLX4_NUM_TUNNEL_BUFS ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx4_ib_demux_pv_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct ib_device*) ; 
 int /*<<< orphan*/ * FUNC5 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlx4_ib_demux_pv_ctx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct mlx4_ib_demux_pv_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx4_ib_demux_pv_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mlx4_ib_sqp_comp_worker ; 
 int /*<<< orphan*/  mlx4_ib_tunnel_comp_handler ; 
 int /*<<< orphan*/  mlx4_ib_tunnel_comp_worker ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 scalar_t__ FUNC16 (struct ib_device*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC17 (struct ib_device*) ; 

__attribute__((used)) static int FUNC18(struct ib_device *ibdev, int slave, int port,
			       int create_tun, struct mlx4_ib_demux_pv_ctx *ctx)
{
	int ret, cq_size;

	if (ctx->state != DEMUX_PV_STATE_DOWN)
		return -EEXIST;

	ctx->state = DEMUX_PV_STATE_STARTING;
	/* have QP0 only on port owner, and only if link layer is IB */
	if (ctx->slave == FUNC14(FUNC17(ctx->ib_dev)->dev) &&
	    FUNC16(ibdev, ctx->port) == IB_LINK_LAYER_INFINIBAND)
		ctx->has_smi = 1;

	if (ctx->has_smi) {
		ret = FUNC12(ctx, IB_QPT_SMI, create_tun);
		if (ret) {
			FUNC15("Failed allocating qp0 tunnel bufs (%d)\n", ret);
			goto err_out;
		}
	}

	ret = FUNC12(ctx, IB_QPT_GSI, create_tun);
	if (ret) {
		FUNC15("Failed allocating qp1 tunnel bufs (%d)\n", ret);
		goto err_out_qp0;
	}

	cq_size = 2 * MLX4_NUM_TUNNEL_BUFS;
	if (ctx->has_smi)
		cq_size *= 2;

	ctx->cq = FUNC5(ctx->ib_dev, mlx4_ib_tunnel_comp_handler,
			       NULL, ctx, cq_size, 0);
	if (FUNC1(ctx->cq)) {
		ret = FUNC2(ctx->cq);
		FUNC15("Couldn't create tunnel CQ (%d)\n", ret);
		goto err_buf;
	}

	ctx->pd = FUNC4(ctx->ib_dev);
	if (FUNC1(ctx->pd)) {
		ret = FUNC2(ctx->pd);
		FUNC15("Couldn't create tunnel PD (%d)\n", ret);
		goto err_cq;
	}

	ctx->mr = FUNC10(ctx->pd, IB_ACCESS_LOCAL_WRITE);
	if (FUNC1(ctx->mr)) {
		ret = FUNC2(ctx->mr);
		FUNC15("Couldn't get tunnel DMA MR (%d)\n", ret);
		goto err_pd;
	}

	if (ctx->has_smi) {
		ret = FUNC3(ctx, IB_QPT_SMI, create_tun);
		if (ret) {
			FUNC15("Couldn't create %s QP0 (%d)\n",
			       create_tun ? "tunnel for" : "",  ret);
			goto err_mr;
		}
	}

	ret = FUNC3(ctx, IB_QPT_GSI, create_tun);
	if (ret) {
		FUNC15("Couldn't create %s QP1 (%d)\n",
		       create_tun ? "tunnel for" : "",  ret);
		goto err_qp0;
	}

	if (create_tun)
		FUNC0(&ctx->work, mlx4_ib_tunnel_comp_worker);
	else
		FUNC0(&ctx->work, mlx4_ib_sqp_comp_worker);

	ctx->wq = FUNC17(ibdev)->sriov.demux[port - 1].wq;

	ret = FUNC11(ctx->cq, IB_CQ_NEXT_COMP);
	if (ret) {
		FUNC15("Couldn't arm tunnel cq (%d)\n", ret);
		goto err_wq;
	}
	ctx->state = DEMUX_PV_STATE_ACTIVE;
	return 0;

err_wq:
	ctx->wq = NULL;
	FUNC9(ctx->qp[1].qp);
	ctx->qp[1].qp = NULL;


err_qp0:
	if (ctx->has_smi)
		FUNC9(ctx->qp[0].qp);
	ctx->qp[0].qp = NULL;

err_mr:
	FUNC7(ctx->mr);
	ctx->mr = NULL;

err_pd:
	FUNC6(ctx->pd);
	ctx->pd = NULL;

err_cq:
	FUNC8(ctx->cq);
	ctx->cq = NULL;

err_buf:
	FUNC13(ctx, IB_QPT_GSI, create_tun);

err_out_qp0:
	if (ctx->has_smi)
		FUNC13(ctx, IB_QPT_SMI, create_tun);
err_out:
	ctx->state = DEMUX_PV_STATE_DOWN;
	return ret;
}