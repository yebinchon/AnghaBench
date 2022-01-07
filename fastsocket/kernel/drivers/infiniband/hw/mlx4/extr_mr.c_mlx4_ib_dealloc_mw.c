
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_ib_mw {int mmw; } ;
struct ib_mw {int device; } ;
struct TYPE_2__ {int dev; } ;


 int kfree (struct mlx4_ib_mw*) ;
 int mlx4_mw_free (int ,int *) ;
 TYPE_1__* to_mdev (int ) ;
 struct mlx4_ib_mw* to_mmw (struct ib_mw*) ;

int mlx4_ib_dealloc_mw(struct ib_mw *ibmw)
{
 struct mlx4_ib_mw *mw = to_mmw(ibmw);

 mlx4_mw_free(to_mdev(ibmw->device)->dev, &mw->mmw);
 kfree(mw);

 return 0;
}
