
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ib_fast_reg_page_list {struct mlx4_ib_fast_reg_page_list* page_list; } ;
struct mlx4_ib_fast_reg_page_list {int map; struct ib_fast_reg_page_list ibfrpl; int mapped_page_list; } ;
struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_fast_reg_page_list* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int MLX4_MAX_FAST_REG_PAGES ;
 int WARN_ON (int) ;
 int dma_alloc_coherent (int *,int,int*,int ) ;
 int kfree (struct mlx4_ib_fast_reg_page_list*) ;
 void* kmalloc (int,int ) ;
 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;

struct ib_fast_reg_page_list *mlx4_ib_alloc_fast_reg_page_list(struct ib_device *ibdev,
              int page_list_len)
{
 struct mlx4_ib_dev *dev = to_mdev(ibdev);
 struct mlx4_ib_fast_reg_page_list *mfrpl;
 int size = page_list_len * sizeof (u64);

 if (page_list_len > MLX4_MAX_FAST_REG_PAGES)
  return ERR_PTR(-EINVAL);

 mfrpl = kmalloc(sizeof *mfrpl, GFP_KERNEL);
 if (!mfrpl)
  return ERR_PTR(-ENOMEM);

 mfrpl->ibfrpl.page_list = kmalloc(size, GFP_KERNEL);
 if (!mfrpl->ibfrpl.page_list)
  goto err_free;

 mfrpl->mapped_page_list = dma_alloc_coherent(&dev->dev->pdev->dev,
           size, &mfrpl->map,
           GFP_KERNEL);
 if (!mfrpl->mapped_page_list)
  goto err_free;

 WARN_ON(mfrpl->map & 0x3f);

 return &mfrpl->ibfrpl;

err_free:
 kfree(mfrpl->ibfrpl.page_list);
 kfree(mfrpl);
 return ERR_PTR(-ENOMEM);
}
