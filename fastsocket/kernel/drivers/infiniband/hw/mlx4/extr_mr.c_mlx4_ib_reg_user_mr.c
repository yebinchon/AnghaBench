
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_14__ {int key; int mtt; } ;
struct ib_mr {int lkey; int rkey; } ;
struct mlx4_ib_mr {TYPE_6__* umem; TYPE_3__ mmr; struct ib_mr ibmr; } ;
struct mlx4_ib_dev {int dev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; TYPE_1__* uobject; } ;
struct TYPE_15__ {int page_size; } ;
struct TYPE_13__ {int pdn; } ;
struct TYPE_12__ {int context; } ;


 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_6__*) ;
 int PTR_ERR (TYPE_6__*) ;
 int convert_access (int) ;
 TYPE_6__* ib_umem_get (int ,int ,int ,int,int ) ;
 int ib_umem_page_count (TYPE_6__*) ;
 int ib_umem_release (TYPE_6__*) ;
 int ilog2 (int ) ;
 int kfree (struct mlx4_ib_mr*) ;
 struct mlx4_ib_mr* kmalloc (int,int ) ;
 int mlx4_ib_umem_write_mtt (struct mlx4_ib_dev*,int *,TYPE_6__*) ;
 int mlx4_mr_alloc (int ,int ,int ,int ,int ,int,int,TYPE_3__*) ;
 int mlx4_mr_enable (int ,TYPE_3__*) ;
 int mlx4_mr_free (int ,TYPE_3__*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 TYPE_2__* to_mpd (struct ib_pd*) ;

struct ib_mr *mlx4_ib_reg_user_mr(struct ib_pd *pd, u64 start, u64 length,
      u64 virt_addr, int access_flags,
      struct ib_udata *udata)
{
 struct mlx4_ib_dev *dev = to_mdev(pd->device);
 struct mlx4_ib_mr *mr;
 int shift;
 int err;
 int n;

 mr = kmalloc(sizeof *mr, GFP_KERNEL);
 if (!mr)
  return ERR_PTR(-ENOMEM);

 mr->umem = ib_umem_get(pd->uobject->context, start, length,
          access_flags, 0);
 if (IS_ERR(mr->umem)) {
  err = PTR_ERR(mr->umem);
  goto err_free;
 }

 n = ib_umem_page_count(mr->umem);
 shift = ilog2(mr->umem->page_size);

 err = mlx4_mr_alloc(dev->dev, to_mpd(pd)->pdn, virt_addr, length,
       convert_access(access_flags), n, shift, &mr->mmr);
 if (err)
  goto err_umem;

 err = mlx4_ib_umem_write_mtt(dev, &mr->mmr.mtt, mr->umem);
 if (err)
  goto err_mr;

 err = mlx4_mr_enable(dev->dev, &mr->mmr);
 if (err)
  goto err_mr;

 mr->ibmr.rkey = mr->ibmr.lkey = mr->mmr.key;

 return &mr->ibmr;

err_mr:
 (void) mlx4_mr_free(to_mdev(pd->device)->dev, &mr->mmr);

err_umem:
 ib_umem_release(mr->umem);

err_free:
 kfree(mr);

 return ERR_PTR(err);
}
