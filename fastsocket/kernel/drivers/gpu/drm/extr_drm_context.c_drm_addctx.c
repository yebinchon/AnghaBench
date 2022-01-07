
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int ctxlist_mutex; int ctx_count; int ctxlist; } ;
struct drm_ctx_list {int handle; int head; struct drm_file* tag; } ;
struct drm_ctx {int handle; } ;


 int DRM_DEBUG (char*,...) ;
 int DRM_KERNEL_CONTEXT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 void* drm_ctxbitmap_next (struct drm_device*) ;
 struct drm_ctx_list* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_addctx(struct drm_device *dev, void *data,
        struct drm_file *file_priv)
{
 struct drm_ctx_list *ctx_entry;
 struct drm_ctx *ctx = data;

 ctx->handle = drm_ctxbitmap_next(dev);
 if (ctx->handle == DRM_KERNEL_CONTEXT) {

  ctx->handle = drm_ctxbitmap_next(dev);
 }
 DRM_DEBUG("%d\n", ctx->handle);
 if (ctx->handle == -1) {
  DRM_DEBUG("Not enough free contexts.\n");

  return -ENOMEM;
 }

 ctx_entry = kmalloc(sizeof(*ctx_entry), GFP_KERNEL);
 if (!ctx_entry) {
  DRM_DEBUG("out of memory\n");
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&ctx_entry->head);
 ctx_entry->handle = ctx->handle;
 ctx_entry->tag = file_priv;

 mutex_lock(&dev->ctxlist_mutex);
 list_add(&ctx_entry->head, &dev->ctxlist);
 ++dev->ctx_count;
 mutex_unlock(&dev->ctxlist_mutex);

 return 0;
}
