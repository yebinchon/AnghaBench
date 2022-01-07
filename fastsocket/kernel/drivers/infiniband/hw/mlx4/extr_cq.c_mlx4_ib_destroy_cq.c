
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_ib_dev {int dev; } ;
struct TYPE_4__ {int mtt; } ;
struct mlx4_ib_cq {int db; TYPE_2__ buf; int umem; int mcq; } ;
struct ib_cq {int cqe; TYPE_1__* uobject; int device; } ;
struct TYPE_3__ {int context; } ;


 int ib_umem_release (int ) ;
 int kfree (struct mlx4_ib_cq*) ;
 int mlx4_cq_free (int ,int *) ;
 int mlx4_db_free (int ,int *) ;
 int mlx4_ib_db_unmap_user (int ,int *) ;
 int mlx4_ib_free_cq_buf (struct mlx4_ib_dev*,TYPE_2__*,int ) ;
 int mlx4_mtt_cleanup (int ,int *) ;
 struct mlx4_ib_cq* to_mcq (struct ib_cq*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 int to_mucontext (int ) ;

int mlx4_ib_destroy_cq(struct ib_cq *cq)
{
 struct mlx4_ib_dev *dev = to_mdev(cq->device);
 struct mlx4_ib_cq *mcq = to_mcq(cq);

 mlx4_cq_free(dev->dev, &mcq->mcq);
 mlx4_mtt_cleanup(dev->dev, &mcq->buf.mtt);

 if (cq->uobject) {
  mlx4_ib_db_unmap_user(to_mucontext(cq->uobject->context), &mcq->db);
  ib_umem_release(mcq->umem);
 } else {
  mlx4_ib_free_cq_buf(dev, &mcq->buf, cq->cqe);
  mlx4_db_free(dev->dev, &mcq->db);
 }

 kfree(mcq);

 return 0;
}
