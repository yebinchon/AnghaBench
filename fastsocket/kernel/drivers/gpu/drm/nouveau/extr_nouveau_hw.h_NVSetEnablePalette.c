
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;


 scalar_t__ NV_PRMCIO_ARX ;
 scalar_t__ NV_PRMCIO_INP0__COLOR ;
 int NV_PRMCIO_SIZE ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nv_rd08 (struct nouveau_device*,scalar_t__) ;
 int nv_wr08 (struct nouveau_device*,scalar_t__,int) ;

__attribute__((used)) static inline void NVSetEnablePalette(struct drm_device *dev, int head, bool enable)
{
 struct nouveau_device *device = nouveau_dev(dev);
 nv_rd08(device, NV_PRMCIO_INP0__COLOR + head * NV_PRMCIO_SIZE);
 nv_wr08(device, NV_PRMCIO_ARX + head * NV_PRMCIO_SIZE, enable ? 0 : 0x20);
}
