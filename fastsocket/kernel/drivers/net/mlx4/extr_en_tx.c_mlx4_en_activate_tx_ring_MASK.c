#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int qpn; } ;
struct TYPE_10__ {int /*<<< orphan*/  usr_page; } ;
struct TYPE_9__ {int /*<<< orphan*/  mtt; } ;
struct TYPE_8__ {TYPE_1__* uar; } ;
struct mlx4_en_tx_ring {int cqn; int cons; int last_nr_txbb; int size; int buf_size; int doorbell_qpn; int /*<<< orphan*/  qp_state; TYPE_5__ qp; TYPE_4__ context; TYPE_3__ wqres; TYPE_2__ bf; scalar_t__ bf_enabled; int /*<<< orphan*/  qpn; int /*<<< orphan*/  stride; int /*<<< orphan*/  buf; int /*<<< orphan*/  tx_info; scalar_t__ poll_cnt; scalar_t__ prod; } ;
struct mlx4_en_tx_info {int dummy; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_QP_STATE_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_en_priv*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,TYPE_4__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 

int FUNC4(struct mlx4_en_priv *priv,
			     struct mlx4_en_tx_ring *ring,
			     int cq, int user_prio)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	int err;

	ring->cqn = cq;
	ring->prod = 0;
	ring->cons = 0xffffffff;
	ring->last_nr_txbb = 1;
	ring->poll_cnt = 0;
	FUNC1(ring->tx_info, 0, ring->size * sizeof(struct mlx4_en_tx_info));
	FUNC1(ring->buf, 0, ring->buf_size);

	ring->qp_state = MLX4_QP_STATE_RST;
	ring->doorbell_qpn = ring->qp.qpn << 8;

	FUNC2(priv, ring->size, ring->stride, 1, 0, ring->qpn,
				ring->cqn, user_prio, &ring->context);
	if (ring->bf_enabled)
		ring->context.usr_page = FUNC0(ring->bf.uar->index);

	err = FUNC3(mdev->dev, &ring->wqres.mtt, &ring->context,
			       &ring->qp, &ring->qp_state);

	return err;
}