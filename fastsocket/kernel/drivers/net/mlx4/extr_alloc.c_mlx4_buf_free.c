
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_dev {TYPE_2__* pdev; } ;
struct TYPE_4__ {scalar_t__ buf; int map; } ;
struct mlx4_buf {int nbufs; TYPE_3__* page_list; TYPE_1__ direct; } ;
struct TYPE_6__ {int map; scalar_t__ buf; } ;
struct TYPE_5__ {int dev; } ;


 int BITS_PER_LONG ;
 int PAGE_SIZE ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;
 int kfree (TYPE_3__*) ;
 int vunmap (scalar_t__) ;

void mlx4_buf_free(struct mlx4_dev *dev, int size, struct mlx4_buf *buf)
{
 int i;

 if (buf->nbufs == 1)
  dma_free_coherent(&dev->pdev->dev, size, buf->direct.buf,
      buf->direct.map);
 else {
  if (BITS_PER_LONG == 64 && buf->direct.buf)
   vunmap(buf->direct.buf);

  for (i = 0; i < buf->nbufs; ++i)
   if (buf->page_list[i].buf)
    dma_free_coherent(&dev->pdev->dev, PAGE_SIZE,
        buf->page_list[i].buf,
        buf->page_list[i].map);
  kfree(buf->page_list);
 }
}
