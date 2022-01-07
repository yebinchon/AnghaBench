
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int qpn; } ;
struct TYPE_10__ {int usr_page; } ;
struct TYPE_9__ {int mtt; } ;
struct TYPE_8__ {TYPE_1__* uar; } ;
struct mlx4_en_tx_ring {int cqn; int cons; int last_nr_txbb; int size; int buf_size; int doorbell_qpn; int qp_state; TYPE_5__ qp; TYPE_4__ context; TYPE_3__ wqres; TYPE_2__ bf; scalar_t__ bf_enabled; int qpn; int stride; int buf; int tx_info; scalar_t__ poll_cnt; scalar_t__ prod; } ;
struct mlx4_en_tx_info {int dummy; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;
struct TYPE_7__ {int index; } ;


 int MLX4_QP_STATE_RST ;
 int cpu_to_be32 (int ) ;
 int memset (int ,int ,int) ;
 int mlx4_en_fill_qp_context (struct mlx4_en_priv*,int,int ,int,int ,int ,int,int,TYPE_4__*) ;
 int mlx4_qp_to_ready (int ,int *,TYPE_4__*,TYPE_5__*,int *) ;

int mlx4_en_activate_tx_ring(struct mlx4_en_priv *priv,
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
 memset(ring->tx_info, 0, ring->size * sizeof(struct mlx4_en_tx_info));
 memset(ring->buf, 0, ring->buf_size);

 ring->qp_state = MLX4_QP_STATE_RST;
 ring->doorbell_qpn = ring->qp.qpn << 8;

 mlx4_en_fill_qp_context(priv, ring->size, ring->stride, 1, 0, ring->qpn,
    ring->cqn, user_prio, &ring->context);
 if (ring->bf_enabled)
  ring->context.usr_page = cpu_to_be32(ring->bf.uar->index);

 err = mlx4_qp_to_ready(mdev->dev, &ring->wqres.mtt, &ring->context,
          &ring->qp, &ring->qp_state);

 return err;
}
