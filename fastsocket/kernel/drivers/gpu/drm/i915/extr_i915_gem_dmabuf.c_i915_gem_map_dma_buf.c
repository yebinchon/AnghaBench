
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sg_table {int nents; struct scatterlist* sgl; } ;
struct scatterlist {int dummy; } ;
struct TYPE_7__ {TYPE_4__* dev; } ;
struct drm_i915_gem_object {TYPE_3__ base; TYPE_2__* pages; } ;
struct dma_buf_attachment {int dev; TYPE_1__* dmabuf; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {int struct_mutex; } ;
struct TYPE_6__ {int nents; struct scatterlist* sgl; } ;
struct TYPE_5__ {struct drm_i915_gem_object* priv; } ;


 int ENOMEM ;
 struct sg_table* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int dma_map_sg (int ,struct scatterlist*,int ,int) ;
 int i915_gem_object_get_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_mutex_lock_interruptible (TYPE_4__*) ;
 int kfree (struct sg_table*) ;
 struct sg_table* kmalloc (int,int ) ;
 int mutex_unlock (int *) ;
 int sg_alloc_table (struct sg_table*,int,int ) ;
 int sg_free_table (struct sg_table*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,int ,int ,int ) ;

__attribute__((used)) static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attachment,
          enum dma_data_direction dir)
{
 struct drm_i915_gem_object *obj = attachment->dmabuf->priv;
 struct sg_table *st;
 struct scatterlist *src, *dst;
 int ret, i;

 ret = i915_mutex_lock_interruptible(obj->base.dev);
 if (ret)
  return ERR_PTR(ret);

 ret = i915_gem_object_get_pages(obj);
 if (ret) {
  st = ERR_PTR(ret);
  goto out;
 }


 st = kmalloc(sizeof(struct sg_table), GFP_KERNEL);
 if (st == ((void*)0)) {
  st = ERR_PTR(-ENOMEM);
  goto out;
 }

 ret = sg_alloc_table(st, obj->pages->nents, GFP_KERNEL);
 if (ret) {
  kfree(st);
  st = ERR_PTR(ret);
  goto out;
 }

 src = obj->pages->sgl;
 dst = st->sgl;
 for (i = 0; i < obj->pages->nents; i++) {
  sg_set_page(dst, sg_page(src), PAGE_SIZE, 0);
  dst = sg_next(dst);
  src = sg_next(src);
 }

 if (!dma_map_sg(attachment->dev, st->sgl, st->nents, dir)) {
  sg_free_table(st);
  kfree(st);
  st = ERR_PTR(-ENOMEM);
  goto out;
 }

 i915_gem_object_pin_pages(obj);

out:
 mutex_unlock(&obj->base.dev->struct_mutex);
 return st;
}
