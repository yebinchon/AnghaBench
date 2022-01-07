
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int NVWriteCRTC (struct drm_device*,int,int ,int ) ;
 int NV_PCRTC_INTR_EN_0 ;
 scalar_t__ nv_two_heads (struct drm_device*) ;

int
nv04_display_early_init(struct drm_device *dev)
{



 NVWriteCRTC(dev, 0, NV_PCRTC_INTR_EN_0, 0);
 if (nv_two_heads(dev))
  NVWriteCRTC(dev, 1, NV_PCRTC_INTR_EN_0, 0);

 return 0;
}
