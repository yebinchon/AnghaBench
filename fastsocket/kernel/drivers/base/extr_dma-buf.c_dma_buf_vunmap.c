
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buf {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* vunmap ) (struct dma_buf*,void*) ;} ;


 scalar_t__ WARN_ON (int) ;
 int stub1 (struct dma_buf*,void*) ;

void dma_buf_vunmap(struct dma_buf *dmabuf, void *vaddr)
{
 if (WARN_ON(!dmabuf))
  return;

 if (dmabuf->ops->vunmap)
  dmabuf->ops->vunmap(dmabuf, vaddr);
}
