
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nouveau_drm {int device; } ;
struct nouveau_device {int crystal; } ;
struct drm_device {int dummy; } ;
typedef enum clk_src { ____Placeholder_clk_src } clk_src ;
struct TYPE_2__ {int chipset; } ;


 int NV_DEBUG (struct nouveau_drm*,char*,int,int) ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_1__* nv_device (int ) ;
 int nv_rd32 (struct nouveau_device*,int) ;
 int read_div (struct drm_device*) ;
 int read_pll (struct drm_device*,int) ;

__attribute__((used)) static u32
read_clk(struct drm_device *dev, enum clk_src src)
{
 struct nouveau_device *device = nouveau_dev(dev);
 struct nouveau_drm *drm = nouveau_drm(dev);
 u32 mast = nv_rd32(device, 0x00c040);
 u32 P = 0;

 switch (src) {
 case 138:
  return device->crystal;
 case 132:
  return 100000;
 case 136:
  return read_clk(dev, 132) * 27778 / 10000;
 case 135:
  return read_clk(dev, 136) * 3;
 case 134:
  return read_clk(dev, 136) * 3 / 2;
 case 133:
  switch (mast & 0x30000000) {
  case 0x00000000: return read_clk(dev, 132);
  case 0x10000000: break;
  case 0x20000000:
  case 0x30000000: return read_clk(dev, 136);
  }
  break;
 case 130:
  if (!(mast & 0x00100000))
   P = (nv_rd32(device, 0x004028) & 0x00070000) >> 16;
  switch (mast & 0x00000003) {
  case 0x00000000: return read_clk(dev, 138) >> P;
  case 0x00000001: return read_clk(dev, 137);
  case 0x00000002: return read_pll(dev, 0x004020) >> P;
  case 0x00000003: return read_pll(dev, 0x004028) >> P;
  }
  break;
 case 129:
  P = (nv_rd32(device, 0x004020) & 0x00070000) >> 16;
  switch (mast & 0x00000030) {
  case 0x00000000:
   if (mast & 0x00000080)
    return read_clk(dev, 133) >> P;
   return read_clk(dev, 138) >> P;
  case 0x00000010: break;
  case 0x00000020: return read_pll(dev, 0x004028) >> P;
  case 0x00000030: return read_pll(dev, 0x004020) >> P;
  }
  break;
 case 131:
  P = (nv_rd32(device, 0x004008) & 0x00070000) >> 16;
  if (nv_rd32(device, 0x004008) & 0x00000200) {
   switch (mast & 0x0000c000) {
   case 0x00000000:
    return read_clk(dev, 138) >> P;
   case 0x00008000:
   case 0x0000c000:
    return read_clk(dev, 132) >> P;
   }
  } else {
   return read_pll(dev, 0x004008) >> P;
  }
  break;
 case 128:
  P = (read_div(dev) & 0x00000700) >> 8;
  switch (nv_device(drm->device)->chipset) {
  case 0x84:
  case 0x86:
  case 0x92:
  case 0x94:
  case 0x96:
  case 0xa0:
   switch (mast & 0x00000c00) {
   case 0x00000000:
    if (nv_device(drm->device)->chipset == 0xa0)
     return read_clk(dev, 130) >> P;
    return read_clk(dev, 138) >> P;
   case 0x00000400:
    return 0;
   case 0x00000800:
    if (mast & 0x01000000)
     return read_pll(dev, 0x004028) >> P;
    return read_pll(dev, 0x004030) >> P;
   case 0x00000c00:
    return read_clk(dev, 130) >> P;
   }
   break;
  case 0x98:
   switch (mast & 0x00000c00) {
   case 0x00000000:
    return read_clk(dev, 130) >> P;
   case 0x00000400:
    return 0;
   case 0x00000800:
    return read_clk(dev, 134) >> P;
   case 0x00000c00:
    return read_clk(dev, 131) >> P;
   }
   break;
  }
  break;
 case 137:
  switch (nv_device(drm->device)->chipset) {
  case 0x50:
  case 0xa0:
   return read_pll(dev, 0x00e810) >> 2;
  case 0x84:
  case 0x86:
  case 0x92:
  case 0x94:
  case 0x96:
  case 0x98:
   P = (read_div(dev) & 0x00000007) >> 0;
   switch (mast & 0x0c000000) {
   case 0x00000000: return read_clk(dev, 132);
   case 0x04000000: break;
   case 0x08000000: return read_clk(dev, 136);
   case 0x0c000000:
    return read_clk(dev, 135) >> P;
   }
   break;
  default:
   break;
  }
 default:
  break;
 }

 NV_DEBUG(drm, "unknown clock source %d 0x%08x\n", src, mast);
 return 0;
}
