
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ rx_filter; scalar_t__ tx_type; } ;
struct mlx4_en_priv {size_t port; int rx_ring_num; TYPE_4__ hwtstamp_config; TYPE_3__* rx_ring; struct mlx4_en_cq* rx_cq; TYPE_1__* dev; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int priv_uar; TYPE_7__* dev; int * pndev; } ;
struct TYPE_17__ {int event; int comp; scalar_t__* arm_db; scalar_t__* set_ci_db; } ;
struct TYPE_14__ {int dma; scalar_t__* db; } ;
struct TYPE_15__ {TYPE_5__ db; int mtt; } ;
struct mlx4_en_cq {scalar_t__ is_tx; int vector; int ring; int napi; int dev; TYPE_8__ mcq; TYPE_6__ wqres; int size; int buf_size; int buf; } ;
struct cpu_rmap {int dummy; } ;
struct TYPE_11__ {int num_comp_vectors; scalar_t__ comp_pool; } ;
struct TYPE_16__ {TYPE_2__ caps; } ;
struct TYPE_12__ {int actual_size; } ;
struct TYPE_10__ {char* name; } ;


 scalar_t__ RX ;
 int memset (int ,int ,int ) ;
 scalar_t__ mlx4_assign_eq (TYPE_7__*,char*,struct cpu_rmap*,int*) ;
 int mlx4_cq_alloc (TYPE_7__*,int ,int *,int *,int ,TYPE_8__*,int,int ,int) ;
 int mlx4_en_cq_event ;
 int mlx4_en_poll_rx_cq ;
 struct cpu_rmap* mlx4_en_rx_cpu_rmap (struct mlx4_en_priv*) ;
 int mlx4_en_rx_irq ;
 int mlx4_en_tx_irq ;
 int mlx4_warn (struct mlx4_en_dev*,char*,char*) ;
 int napi_enable (int *) ;
 int netif_napi_add (int ,int *,int ,int) ;
 int sprintf (char*,char*,char*,int) ;

int mlx4_en_activate_cq(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq,
   int cq_idx)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 int err = 0;
 char name[25];
 int timestamp_en = 0;
 struct cpu_rmap *rmap = mlx4_en_rx_cpu_rmap(priv);

 cq->dev = mdev->pndev[priv->port];
 cq->mcq.set_ci_db = cq->wqres.db.db;
 cq->mcq.arm_db = cq->wqres.db.db + 1;
 *cq->mcq.set_ci_db = 0;
 *cq->mcq.arm_db = 0;
 memset(cq->buf, 0, cq->buf_size);

 if (cq->is_tx == RX) {
  if (mdev->dev->caps.comp_pool) {
   if (!cq->vector) {
    sprintf(name, "%s-%d", priv->dev->name,
     cq->ring);

    if (mlx4_assign_eq(mdev->dev, name, rmap,
         &cq->vector)) {
     cq->vector = (cq->ring + 1 + priv->port)
         % mdev->dev->caps.num_comp_vectors;
     mlx4_warn(mdev, "Failed Assigning an EQ to "
        "%s ,Falling back to legacy EQ's\n",
        name);
    }
   }
  } else {
   cq->vector = (cq->ring + 1 + priv->port) %
    mdev->dev->caps.num_comp_vectors;
  }
 } else {


  struct mlx4_en_cq *rx_cq;

  cq_idx = cq_idx % priv->rx_ring_num;
  rx_cq = &priv->rx_cq[cq_idx];
  cq->vector = rx_cq->vector;
 }

 if (!cq->is_tx)
  cq->size = priv->rx_ring[cq->ring].actual_size;

 if ((cq->is_tx && priv->hwtstamp_config.tx_type) ||
     (!cq->is_tx && priv->hwtstamp_config.rx_filter))
  timestamp_en = 1;

 err = mlx4_cq_alloc(mdev->dev, cq->size, &cq->wqres.mtt,
       &mdev->priv_uar, cq->wqres.db.dma, &cq->mcq,
       cq->vector, 0, timestamp_en);
 if (err)
  return err;

 cq->mcq.comp = cq->is_tx ? mlx4_en_tx_irq : mlx4_en_rx_irq;
 cq->mcq.event = mlx4_en_cq_event;

 if (!cq->is_tx) {
  netif_napi_add(cq->dev, &cq->napi, mlx4_en_poll_rx_cq, 64);
  napi_enable(&cq->napi);
 }

 return 0;
}
