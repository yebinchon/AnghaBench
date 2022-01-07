
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int last_context; } ;
struct drm_ctx {int handle; } ;


 int DRM_DEBUG (char*,int ) ;
 int drm_context_switch (struct drm_device*,int ,int ) ;

int drm_switchctx(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 struct drm_ctx *ctx = data;

 DRM_DEBUG("%d\n", ctx->handle);
 return drm_context_switch(dev, dev->last_context, ctx->handle);
}
