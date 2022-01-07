
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nouveau_fb {int (* memtype_valid ) (struct nouveau_fb*,int ) ;} ;
struct TYPE_5__ {int dev_mapping; } ;
struct TYPE_6__ {TYPE_1__ bdev; } ;
struct nouveau_drm {TYPE_3__* dev; TYPE_2__ ttm; int device; } ;
struct nouveau_cli {int dummy; } ;
struct nouveau_bo {int gem; } ;
struct TYPE_8__ {int handle; int tile_flags; int tile_mode; int domain; int size; } ;
struct drm_nouveau_gem_new {TYPE_4__ info; int align; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_7__ {int dev_mapping; } ;


 int EINVAL ;
 int NV_ERROR (struct nouveau_cli*,char*,int ) ;
 int drm_gem_handle_create (struct drm_file*,int ,int *) ;
 int drm_gem_handle_delete (struct drm_file*,int ) ;
 int drm_gem_object_unreference_unlocked (int ) ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 struct nouveau_fb* nouveau_fb (int ) ;
 int nouveau_gem_info (struct drm_file*,int ,TYPE_4__*) ;
 int nouveau_gem_new (struct drm_device*,int ,int ,int ,int ,int ,struct nouveau_bo**) ;
 int stub1 (struct nouveau_fb*,int ) ;

int
nouveau_gem_ioctl_new(struct drm_device *dev, void *data,
        struct drm_file *file_priv)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_cli *cli = nouveau_cli(file_priv);
 struct nouveau_fb *pfb = nouveau_fb(drm->device);
 struct drm_nouveau_gem_new *req = data;
 struct nouveau_bo *nvbo = ((void*)0);
 int ret = 0;

 drm->ttm.bdev.dev_mapping = drm->dev->dev_mapping;

 if (!pfb->memtype_valid(pfb, req->info.tile_flags)) {
  NV_ERROR(cli, "bad page flags: 0x%08x\n", req->info.tile_flags);
  return -EINVAL;
 }

 ret = nouveau_gem_new(dev, req->info.size, req->align,
         req->info.domain, req->info.tile_mode,
         req->info.tile_flags, &nvbo);
 if (ret)
  return ret;

 ret = drm_gem_handle_create(file_priv, nvbo->gem, &req->info.handle);
 if (ret == 0) {
  ret = nouveau_gem_info(file_priv, nvbo->gem, &req->info);
  if (ret)
   drm_gem_handle_delete(file_priv, req->info.handle);
 }


 drm_gem_object_unreference_unlocked(nvbo->gem);
 return ret;
}
