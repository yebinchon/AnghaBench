
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
struct mlx4_ib_qp {int mutex; int gid_list; int port; } ;
struct mlx4_ib_gid_entry {int added; int list; int port; union ib_gid gid; } ;
struct mlx4_ib_dev {int dummy; } ;
struct ib_qp {int device; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mlx4_ib_gid_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ mlx4_ib_add_mc (struct mlx4_ib_dev*,struct mlx4_ib_qp*,union ib_gid*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 struct mlx4_ib_qp* to_mqp (struct ib_qp*) ;

__attribute__((used)) static int add_gid_entry(struct ib_qp *ibqp, union ib_gid *gid)
{
 struct mlx4_ib_qp *mqp = to_mqp(ibqp);
 struct mlx4_ib_dev *mdev = to_mdev(ibqp->device);
 struct mlx4_ib_gid_entry *ge;

 ge = kzalloc(sizeof *ge, GFP_KERNEL);
 if (!ge)
  return -ENOMEM;

 ge->gid = *gid;
 if (mlx4_ib_add_mc(mdev, mqp, gid)) {
  ge->port = mqp->port;
  ge->added = 1;
 }

 mutex_lock(&mqp->mutex);
 list_add_tail(&ge->list, &mqp->gid_list);
 mutex_unlock(&mqp->mutex);

 return 0;
}
