
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buf {TYPE_1__* ops; } ;
struct TYPE_2__ {void* (* vmap ) (struct dma_buf*) ;} ;


 scalar_t__ WARN_ON (int) ;
 void* stub1 (struct dma_buf*) ;

void *dma_buf_vmap(struct dma_buf *dmabuf)
{
 if (WARN_ON(!dmabuf))
  return ((void*)0);

 if (dmabuf->ops->vmap)
  return dmabuf->ops->vmap(dmabuf);
 return ((void*)0);
}
