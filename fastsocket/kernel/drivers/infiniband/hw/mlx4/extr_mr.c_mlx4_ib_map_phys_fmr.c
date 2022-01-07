
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int rkey; int lkey; int device; } ;
struct mlx4_ib_fmr {TYPE_1__ ibfmr; int mfmr; } ;
struct mlx4_ib_dev {int dev; } ;
struct ib_fmr {int dummy; } ;


 int mlx4_map_phys_fmr (int ,int *,int *,int,int ,int *,int *) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 struct mlx4_ib_fmr* to_mfmr (struct ib_fmr*) ;

int mlx4_ib_map_phys_fmr(struct ib_fmr *ibfmr, u64 *page_list,
        int npages, u64 iova)
{
 struct mlx4_ib_fmr *ifmr = to_mfmr(ibfmr);
 struct mlx4_ib_dev *dev = to_mdev(ifmr->ibfmr.device);

 return mlx4_map_phys_fmr(dev->dev, &ifmr->mfmr, page_list, npages, iova,
     &ifmr->ibfmr.lkey, &ifmr->ibfmr.rkey);
}
