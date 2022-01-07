
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcom_task {struct bcom_fec_priv* priv; int flags; } ;
struct bcom_fec_priv {int maxbufsize; int fifo; } ;
struct bcom_fec_bd {int dummy; } ;
typedef int phys_addr_t ;


 int BCOM_FLAGS_NONE ;
 scalar_t__ bcom_fec_rx_reset (struct bcom_task*) ;
 struct bcom_task* bcom_task_alloc (int,int,int) ;
 int bcom_task_free (struct bcom_task*) ;

struct bcom_task *
bcom_fec_rx_init(int queue_len, phys_addr_t fifo, int maxbufsize)
{
 struct bcom_task *tsk;
 struct bcom_fec_priv *priv;

 tsk = bcom_task_alloc(queue_len, sizeof(struct bcom_fec_bd),
    sizeof(struct bcom_fec_priv));
 if (!tsk)
  return ((void*)0);

 tsk->flags = BCOM_FLAGS_NONE;

 priv = tsk->priv;
 priv->fifo = fifo;
 priv->maxbufsize = maxbufsize;

 if (bcom_fec_rx_reset(tsk)) {
  bcom_task_free(tsk);
  return ((void*)0);
 }

 return tsk;
}
