
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int key; } ;
struct ib_mr {int lkey; int rkey; } ;
struct mlx4_ib_mr {TYPE_2__ mmr; struct ib_mr ibmr; int * umem; } ;
struct mlx4_ib_dev {int dev; } ;
struct ib_pd {int device; } ;
struct TYPE_5__ {int pdn; } ;


 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct mlx4_ib_mr*) ;
 struct mlx4_ib_mr* kmalloc (int,int ) ;
 int mlx4_mr_alloc (int ,int ,int ,int ,int ,int,int ,TYPE_2__*) ;
 int mlx4_mr_enable (int ,TYPE_2__*) ;
 int mlx4_mr_free (int ,TYPE_2__*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 TYPE_1__* to_mpd (struct ib_pd*) ;

struct ib_mr *mlx4_ib_alloc_fast_reg_mr(struct ib_pd *pd,
     int max_page_list_len)
{
 struct mlx4_ib_dev *dev = to_mdev(pd->device);
 struct mlx4_ib_mr *mr;
 int err;

 mr = kmalloc(sizeof *mr, GFP_KERNEL);
 if (!mr)
  return ERR_PTR(-ENOMEM);

 err = mlx4_mr_alloc(dev->dev, to_mpd(pd)->pdn, 0, 0, 0,
       max_page_list_len, 0, &mr->mmr);
 if (err)
  goto err_free;

 err = mlx4_mr_enable(dev->dev, &mr->mmr);
 if (err)
  goto err_mr;

 mr->ibmr.rkey = mr->ibmr.lkey = mr->mmr.key;
 mr->umem = ((void*)0);

 return &mr->ibmr;

err_mr:
 (void) mlx4_mr_free(dev->dev, &mr->mmr);

err_free:
 kfree(mr);
 return ERR_PTR(err);
}
