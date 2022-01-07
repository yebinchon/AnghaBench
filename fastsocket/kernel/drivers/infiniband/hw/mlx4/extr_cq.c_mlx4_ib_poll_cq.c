
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_qp {int dummy; } ;
struct mlx4_ib_cq {int lock; int mcq; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;


 int EAGAIN ;
 int mlx4_cq_set_ci (int *) ;
 int mlx4_ib_poll_one (struct mlx4_ib_cq*,struct mlx4_ib_qp**,struct ib_wc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mlx4_ib_cq* to_mcq (struct ib_cq*) ;

int mlx4_ib_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
 struct mlx4_ib_cq *cq = to_mcq(ibcq);
 struct mlx4_ib_qp *cur_qp = ((void*)0);
 unsigned long flags;
 int npolled;
 int err = 0;

 spin_lock_irqsave(&cq->lock, flags);

 for (npolled = 0; npolled < num_entries; ++npolled) {
  err = mlx4_ib_poll_one(cq, &cur_qp, wc + npolled);
  if (err)
   break;
 }

 mlx4_cq_set_ci(&cq->mcq);

 spin_unlock_irqrestore(&cq->lock, flags);

 if (err == 0 || err == -EAGAIN)
  return npolled;
 else
  return err;
}
