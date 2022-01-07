
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_fmr {int mfmr; } ;
struct mlx4_ib_dev {int dev; } ;
struct ib_fmr {int device; } ;


 int kfree (struct mlx4_ib_fmr*) ;
 int mlx4_fmr_free (int ,int *) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 struct mlx4_ib_fmr* to_mfmr (struct ib_fmr*) ;

int mlx4_ib_fmr_dealloc(struct ib_fmr *ibfmr)
{
 struct mlx4_ib_fmr *ifmr = to_mfmr(ibfmr);
 struct mlx4_ib_dev *dev = to_mdev(ibfmr->device);
 int err;

 err = mlx4_fmr_free(dev->dev, &ifmr->mfmr);

 if (!err)
  kfree(ifmr);

 return err;
}
