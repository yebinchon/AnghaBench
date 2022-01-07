
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {struct dma_buf_attachment* import_attach; struct drm_device* dev; } ;
struct drm_i915_gem_object {struct drm_gem_object base; } ;
struct drm_device {int dev; } ;
struct dma_buf_attachment {int dummy; } ;
struct dma_buf {int size; struct drm_i915_gem_object* priv; int * ops; } ;


 int ENOMEM ;
 struct drm_gem_object* ERR_CAST (struct dma_buf_attachment*) ;
 struct drm_gem_object* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct dma_buf_attachment*) ;
 struct dma_buf_attachment* dma_buf_attach (struct dma_buf*,int ) ;
 int dma_buf_detach (struct dma_buf*,struct dma_buf_attachment*) ;
 int dma_buf_put (struct dma_buf*) ;
 int drm_gem_object_reference (struct drm_gem_object*) ;
 int drm_gem_private_object_init (struct drm_device*,struct drm_gem_object*,int ) ;
 int get_dma_buf (struct dma_buf*) ;
 int i915_dmabuf_ops ;
 struct drm_i915_gem_object* i915_gem_object_alloc (struct drm_device*) ;
 int i915_gem_object_dmabuf_ops ;
 int i915_gem_object_free (struct drm_i915_gem_object*) ;
 int i915_gem_object_init (struct drm_i915_gem_object*,int *) ;

struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
          struct dma_buf *dma_buf)
{
 struct dma_buf_attachment *attach;
 struct drm_i915_gem_object *obj;
 int ret;


 if (dma_buf->ops == &i915_dmabuf_ops) {
  obj = dma_buf->priv;

  if (obj->base.dev == dev) {




   drm_gem_object_reference(&obj->base);
   return &obj->base;
  }
 }


 attach = dma_buf_attach(dma_buf, dev->dev);
 if (IS_ERR(attach))
  return ERR_CAST(attach);

 get_dma_buf(dma_buf);

 obj = i915_gem_object_alloc(dev);
 if (obj == ((void*)0)) {
  ret = -ENOMEM;
  goto fail_detach;
 }

 ret = drm_gem_private_object_init(dev, &obj->base, dma_buf->size);
 if (ret) {
  i915_gem_object_free(obj);
  goto fail_detach;
 }

 i915_gem_object_init(obj, &i915_gem_object_dmabuf_ops);
 obj->base.import_attach = attach;

 return &obj->base;

fail_detach:
 dma_buf_detach(dma_buf, attach);
 dma_buf_put(dma_buf);

 return ERR_PTR(ret);
}
