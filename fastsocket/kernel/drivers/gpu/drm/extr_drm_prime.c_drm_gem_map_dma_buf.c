
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sg_table {int nents; int sgl; } ;
struct drm_gem_object {TYPE_3__* dev; } ;
struct dma_buf_attachment {int dev; TYPE_1__* dmabuf; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {int struct_mutex; TYPE_2__* driver; } ;
struct TYPE_5__ {struct sg_table* (* gem_prime_get_sg_table ) (struct drm_gem_object*) ;} ;
struct TYPE_4__ {struct drm_gem_object* priv; } ;


 int IS_ERR_OR_NULL (struct sg_table*) ;
 int dma_map_sg (int ,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sg_table* stub1 (struct drm_gem_object*) ;

__attribute__((used)) static struct sg_table *drm_gem_map_dma_buf(struct dma_buf_attachment *attach,
  enum dma_data_direction dir)
{
 struct drm_gem_object *obj = attach->dmabuf->priv;
 struct sg_table *sgt;

 mutex_lock(&obj->dev->struct_mutex);

 sgt = obj->dev->driver->gem_prime_get_sg_table(obj);

 if (!IS_ERR_OR_NULL(sgt))
  dma_map_sg(attach->dev, sgt->sgl, sgt->nents, dir);

 mutex_unlock(&obj->dev->struct_mutex);
 return sgt;
}
