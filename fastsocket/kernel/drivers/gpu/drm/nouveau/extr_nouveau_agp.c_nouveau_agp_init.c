
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int base; int stat; } ;
struct nouveau_drm {TYPE_1__ agp; struct drm_device* dev; int device; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_agp_mode {int mode; } ;
struct drm_agp_info {int aperture_size; int aperture_base; int mode; } ;


 int DISABLE ;
 int ENABLED ;
 int drm_agp_acquire (struct drm_device*) ;
 int drm_agp_enable (struct drm_device*,struct drm_agp_mode) ;
 int drm_agp_info (struct drm_device*,struct drm_agp_info*) ;
 int get_agp_mode (struct nouveau_drm*,int ) ;
 int nouveau_agp_enabled (struct nouveau_drm*) ;
 struct nouveau_device* nv_device (int ) ;
 int nv_error (struct nouveau_device*,char*,int) ;

void
nouveau_agp_init(struct nouveau_drm *drm)
{
}
