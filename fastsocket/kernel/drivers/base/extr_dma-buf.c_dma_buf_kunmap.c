
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buf {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* kunmap ) (struct dma_buf*,unsigned long,void*) ;} ;


 int WARN_ON (int) ;
 int stub1 (struct dma_buf*,unsigned long,void*) ;

void dma_buf_kunmap(struct dma_buf *dmabuf, unsigned long page_num,
      void *vaddr)
{
 WARN_ON(!dmabuf);

 if (dmabuf->ops->kunmap)
  dmabuf->ops->kunmap(dmabuf, page_num, vaddr);
}
