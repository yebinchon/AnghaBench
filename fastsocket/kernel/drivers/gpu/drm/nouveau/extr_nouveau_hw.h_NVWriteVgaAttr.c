
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;


 scalar_t__ NVGetEnablePalette (struct drm_device*,int) ;
 scalar_t__ NV_PRMCIO_ARX ;
 scalar_t__ NV_PRMCIO_AR__WRITE ;
 scalar_t__ NV_PRMCIO_INP0__COLOR ;
 int NV_PRMCIO_SIZE ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nv_rd08 (struct nouveau_device*,scalar_t__) ;
 int nv_wr08 (struct nouveau_device*,scalar_t__,int) ;

__attribute__((used)) static inline void NVWriteVgaAttr(struct drm_device *dev,
     int head, uint8_t index, uint8_t value)
{
 struct nouveau_device *device = nouveau_dev(dev);
 if (NVGetEnablePalette(dev, head))
  index &= ~0x20;
 else
  index |= 0x20;

 nv_rd08(device, NV_PRMCIO_INP0__COLOR + head * NV_PRMCIO_SIZE);
 nv_wr08(device, NV_PRMCIO_ARX + head * NV_PRMCIO_SIZE, index);
 nv_wr08(device, NV_PRMCIO_AR__WRITE + head * NV_PRMCIO_SIZE, value);
}
