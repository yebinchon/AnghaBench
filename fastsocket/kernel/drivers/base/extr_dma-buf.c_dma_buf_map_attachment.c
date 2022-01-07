
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct dma_buf_attachment {TYPE_2__* dmabuf; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {struct sg_table* (* map_dma_buf ) (struct dma_buf_attachment*,int) ;} ;


 int EINVAL ;
 struct sg_table* ERR_PTR (int ) ;
 scalar_t__ WARN_ON (int) ;
 int might_sleep () ;
 struct sg_table* stub1 (struct dma_buf_attachment*,int) ;

struct sg_table *dma_buf_map_attachment(struct dma_buf_attachment *attach,
     enum dma_data_direction direction)
{
 struct sg_table *sg_table = ERR_PTR(-EINVAL);

 might_sleep();

 if (WARN_ON(!attach || !attach->dmabuf))
  return ERR_PTR(-EINVAL);

 sg_table = attach->dmabuf->ops->map_dma_buf(attach, direction);

 return sg_table;
}
