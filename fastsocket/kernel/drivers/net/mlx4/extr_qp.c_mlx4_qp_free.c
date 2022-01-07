
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_qp {int qpn; int free; int refcount; } ;
struct mlx4_dev {int dummy; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 int mlx4_qp_free_icm (struct mlx4_dev*,int ) ;
 int wait_for_completion (int *) ;

void mlx4_qp_free(struct mlx4_dev *dev, struct mlx4_qp *qp)
{
 if (atomic_dec_and_test(&qp->refcount))
  complete(&qp->free);
 wait_for_completion(&qp->free);

 mlx4_qp_free_icm(dev, qp->qpn);
}
