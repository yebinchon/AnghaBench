
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buf {TYPE_1__* ops; } ;
struct TYPE_2__ {void* (* kmap ) (struct dma_buf*,unsigned long) ;} ;


 int WARN_ON (int) ;
 void* stub1 (struct dma_buf*,unsigned long) ;

void *dma_buf_kmap(struct dma_buf *dmabuf, unsigned long page_num)
{
 WARN_ON(!dmabuf);

 return dmabuf->ops->kmap(dmabuf, page_num);
}
