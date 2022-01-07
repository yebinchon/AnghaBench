
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {struct mlx4_ib_fast_reg_page_list* page_list; } ;
struct mlx4_ib_fast_reg_page_list {TYPE_1__ ibfrpl; int map; int mapped_page_list; } ;
struct mlx4_ib_dev {TYPE_3__* dev; } ;
struct ib_fast_reg_page_list {int max_page_list_len; int device; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int dma_free_coherent (int *,int,int ,int ) ;
 int kfree (struct mlx4_ib_fast_reg_page_list*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 struct mlx4_ib_fast_reg_page_list* to_mfrpl (struct ib_fast_reg_page_list*) ;

void mlx4_ib_free_fast_reg_page_list(struct ib_fast_reg_page_list *page_list)
{
 struct mlx4_ib_dev *dev = to_mdev(page_list->device);
 struct mlx4_ib_fast_reg_page_list *mfrpl = to_mfrpl(page_list);
 int size = page_list->max_page_list_len * sizeof (u64);

 dma_free_coherent(&dev->dev->pdev->dev, size, mfrpl->mapped_page_list,
     mfrpl->map);
 kfree(mfrpl->ibfrpl.page_list);
 kfree(mfrpl);
}
