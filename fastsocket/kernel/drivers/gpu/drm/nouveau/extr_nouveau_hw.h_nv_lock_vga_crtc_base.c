
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct drm_device {int dummy; } ;


 int NVReadVgaCrtc (struct drm_device*,int,int ) ;
 int NVWriteVgaCrtc (struct drm_device*,int,int ,int) ;
 int NV_CIO_CR_VRE_INDEX ;

__attribute__((used)) static inline bool
nv_lock_vga_crtc_base(struct drm_device *dev, int head, bool lock)
{
 uint8_t cr11 = NVReadVgaCrtc(dev, head, NV_CIO_CR_VRE_INDEX);
 bool waslocked = cr11 & 0x80;

 if (lock)
  cr11 |= 0x80;
 else
  cr11 &= ~0x80;
 NVWriteVgaCrtc(dev, head, NV_CIO_CR_VRE_INDEX, cr11);

 return waslocked;
}
