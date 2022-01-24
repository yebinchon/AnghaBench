#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mlx4_qp_context {int /*<<< orphan*/  param3; int /*<<< orphan*/  db_rec_addr; } ;
struct mlx4_qp {int /*<<< orphan*/  event; } ;
struct TYPE_8__ {int /*<<< orphan*/  dma; } ;
struct TYPE_10__ {int /*<<< orphan*/  mtt; TYPE_1__ db; } ;
struct mlx4_en_rx_ring {TYPE_3__ wqres; scalar_t__ fcs_del; int /*<<< orphan*/  cqn; int /*<<< orphan*/  stride; int /*<<< orphan*/  actual_size; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_4__* dev; } ;
typedef  enum mlx4_qp_state { ____Placeholder_mlx4_qp_state } mlx4_qp_state ;
struct TYPE_9__ {int flags; } ;
struct TYPE_11__ {TYPE_2__ caps; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX4_DEV_CAP_FLAG_FCS_KEEP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_qp_context*) ; 
 struct mlx4_qp_context* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_qp_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_en_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct mlx4_qp_context*) ; 
 int /*<<< orphan*/  mlx4_en_sqp_event ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_en_rx_ring*) ; 
 int FUNC8 (TYPE_4__*,int,struct mlx4_qp*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,struct mlx4_qp*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,struct mlx4_qp*) ; 
 int FUNC11 (TYPE_4__*,int /*<<< orphan*/ *,struct mlx4_qp_context*,struct mlx4_qp*,int*) ; 

__attribute__((used)) static int FUNC12(struct mlx4_en_priv *priv, int qpn,
				 struct mlx4_en_rx_ring *ring,
				 enum mlx4_qp_state *state,
				 struct mlx4_qp *qp)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_qp_context *context;
	int err = 0;

	context = FUNC4(sizeof *context , GFP_KERNEL);
	if (!context) {
		FUNC2(priv, "Failed to allocate qp context\n");
		return -ENOMEM;
	}

	err = FUNC8(mdev->dev, qpn, qp);
	if (err) {
		FUNC2(priv, "Failed to allocate qp #%x\n", qpn);
		goto out;
	}
	qp->event = mlx4_en_sqp_event;

	FUNC5(context, 0, sizeof *context);
	FUNC6(priv, ring->actual_size, ring->stride, 0, 0,
				qpn, ring->cqn, -1, context);
	context->db_rec_addr = FUNC1(ring->wqres.db.dma);

	/* Cancel FCS removal if FW allows */
	if (mdev->dev->caps.flags & MLX4_DEV_CAP_FLAG_FCS_KEEP) {
		context->param3 |= FUNC0(1 << 29);
		ring->fcs_del = ETH_FCS_LEN;
	} else
		ring->fcs_del = 0;

	err = FUNC11(mdev->dev, &ring->wqres.mtt, context, qp, state);
	if (err) {
		FUNC10(mdev->dev, qp);
		FUNC9(mdev->dev, qp);
	}
	FUNC7(ring);
out:
	FUNC3(context);
	return err;
}