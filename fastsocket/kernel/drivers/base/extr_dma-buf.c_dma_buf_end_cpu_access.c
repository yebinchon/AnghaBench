
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buf {TYPE_1__* ops; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int (* end_cpu_access ) (struct dma_buf*,size_t,size_t,int) ;} ;


 int WARN_ON (int) ;
 int stub1 (struct dma_buf*,size_t,size_t,int) ;

void dma_buf_end_cpu_access(struct dma_buf *dmabuf, size_t start, size_t len,
       enum dma_data_direction direction)
{
 WARN_ON(!dmabuf);

 if (dmabuf->ops->end_cpu_access)
  dmabuf->ops->end_cpu_access(dmabuf, start, len, direction);
}
