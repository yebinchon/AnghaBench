
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int pci_device; } ;


 int DRM_MODE_DPMS_ON ;
 int NV_PBUS_DEBUG_DUALHEAD_CTL ;
 int NV_PCRTC_GPIO_EXT ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nv_mask (struct nouveau_device*,int ,int,int) ;

__attribute__((used)) static void nv04_dfp_update_backlight(struct drm_encoder *encoder, int mode)
{
}
