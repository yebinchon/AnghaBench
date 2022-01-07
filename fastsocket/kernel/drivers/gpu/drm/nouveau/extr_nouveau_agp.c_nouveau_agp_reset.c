
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nouveau_drm {struct drm_device* dev; int device; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {TYPE_1__* agp; } ;
struct drm_agp_mode {int mode; } ;
struct drm_agp_info {int mode; } ;
struct TYPE_2__ {int mode; } ;


 int NV04_PBUS_PCI_NV_1 ;
 int NV04_PBUS_PCI_NV_19 ;
 int PCI_AGP_COMMAND_FW ;
 int drm_agp_enable (struct drm_device*,struct drm_agp_mode) ;
 int drm_agp_info (struct drm_device*,struct drm_agp_info*) ;
 int get_agp_mode (struct nouveau_drm*,int ) ;
 int nouveau_agp_enabled (struct nouveau_drm*) ;
 struct nouveau_device* nv_device (int ) ;
 int nv_mask (struct nouveau_device*,int,int,int) ;
 int nv_rd32 (struct nouveau_device*,int) ;
 int nv_wr32 (struct nouveau_device*,int,int) ;

void
nouveau_agp_reset(struct nouveau_drm *drm)
{
}
