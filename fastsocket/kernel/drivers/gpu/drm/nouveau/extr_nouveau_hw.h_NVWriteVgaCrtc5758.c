
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct drm_device {int dummy; } ;


 int NVWriteVgaCrtc (struct drm_device*,int,int ,int ) ;
 int NV_CIO_CRE_57 ;
 int NV_CIO_CRE_58 ;

__attribute__((used)) static inline void
NVWriteVgaCrtc5758(struct drm_device *dev, int head, uint8_t index, uint8_t value)
{
 NVWriteVgaCrtc(dev, head, NV_CIO_CRE_57, index);
 NVWriteVgaCrtc(dev, head, NV_CIO_CRE_58, value);
}
