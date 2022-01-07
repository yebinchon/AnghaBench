
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct nouveau_drm {int device; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;


 int NVReadVgaCrtc (struct drm_device*,int,int ) ;
 int NVWriteCRTC (struct drm_device*,int,int ,int) ;
 int NVWriteVgaCrtc (struct drm_device*,int,int ,int) ;
 scalar_t__ NV_04 ;
 int NV_CIO_CRE_HEB__INDEX ;
 int NV_PCRTC_START ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_1__* nv_device (int ) ;

__attribute__((used)) static inline void
nv_set_crtc_base(struct drm_device *dev, int head, uint32_t offset)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 NVWriteCRTC(dev, head, NV_PCRTC_START, offset);

 if (nv_device(drm->device)->card_type == NV_04) {




  int cre_heb = NVReadVgaCrtc(dev, head, NV_CIO_CRE_HEB__INDEX);

  NVWriteVgaCrtc(dev, head, NV_CIO_CRE_HEB__INDEX,
          (cre_heb & ~0x40) | ((offset >> 18) & 0x40));
 }
}
