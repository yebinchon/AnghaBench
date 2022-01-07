
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buf_attachment {int node; } ;
struct dma_buf {int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* detach ) (struct dma_buf*,struct dma_buf_attachment*) ;} ;


 scalar_t__ WARN_ON (int) ;
 int kfree (struct dma_buf_attachment*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct dma_buf*,struct dma_buf_attachment*) ;

void dma_buf_detach(struct dma_buf *dmabuf, struct dma_buf_attachment *attach)
{
 if (WARN_ON(!dmabuf || !attach))
  return;

 mutex_lock(&dmabuf->lock);
 list_del(&attach->node);
 if (dmabuf->ops->detach)
  dmabuf->ops->detach(dmabuf, attach);

 mutex_unlock(&dmabuf->lock);
 kfree(attach);
}
