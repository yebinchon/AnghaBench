
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_fbdev {int dev; } ;
struct TYPE_2__ {int mutex; } ;
struct nouveau_drm {TYPE_1__ client; int device; } ;
struct nouveau_device {scalar_t__ card_type; } ;
struct fb_info {scalar_t__ state; int flags; struct nouveau_fbdev* par; } ;
struct fb_fillrect {int dummy; } ;


 int ENODEV ;
 int FBINFO_HWACCEL_DISABLED ;
 scalar_t__ FBINFO_STATE_RUNNING ;
 scalar_t__ NV_50 ;
 scalar_t__ NV_C0 ;
 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int in_interrupt () ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 int nouveau_fbcon_gpu_lockup (struct fb_info*) ;
 int nv04_fbcon_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int nv50_fbcon_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 struct nouveau_device* nv_device (int ) ;
 int nvc0_fbcon_fillrect (struct fb_info*,struct fb_fillrect const*) ;

__attribute__((used)) static void
nouveau_fbcon_fillrect(struct fb_info *info, const struct fb_fillrect *rect)
{
 struct nouveau_fbdev *fbcon = info->par;
 struct nouveau_drm *drm = nouveau_drm(fbcon->dev);
 struct nouveau_device *device = nv_device(drm->device);
 int ret;

 if (info->state != FBINFO_STATE_RUNNING)
  return;

 ret = -ENODEV;
 if (!in_interrupt() && !(info->flags & FBINFO_HWACCEL_DISABLED) &&
     mutex_trylock(&drm->client.mutex)) {
  if (device->card_type < NV_50)
   ret = nv04_fbcon_fillrect(info, rect);
  else
  if (device->card_type < NV_C0)
   ret = nv50_fbcon_fillrect(info, rect);
  else
   ret = nvc0_fbcon_fillrect(info, rect);
  mutex_unlock(&drm->client.mutex);
 }

 if (ret == 0)
  return;

 if (ret != -ENODEV)
  nouveau_fbcon_gpu_lockup(info);
 cfb_fillrect(info, rect);
}
