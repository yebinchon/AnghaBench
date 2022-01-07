
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;


 scalar_t__ NV_PRMCIO_CRX__COLOR ;
 scalar_t__ NV_PRMCIO_CR__COLOR ;
 int NV_PRMCIO_SIZE ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nv_rd08 (struct nouveau_device*,scalar_t__) ;
 int nv_wr08 (struct nouveau_device*,scalar_t__,int ) ;

__attribute__((used)) static inline uint8_t NVReadVgaCrtc(struct drm_device *dev,
     int head, uint8_t index)
{
 struct nouveau_device *device = nouveau_dev(dev);
 uint8_t val;
 nv_wr08(device, NV_PRMCIO_CRX__COLOR + head * NV_PRMCIO_SIZE, index);
 val = nv_rd08(device, NV_PRMCIO_CR__COLOR + head * NV_PRMCIO_SIZE);
 return val;
}
