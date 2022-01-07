
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_drm {int dummy; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;


 int NV_ERROR (struct nouveau_drm*,char*,int) ;
 int clk_src_crystal ;
 int clk_src_href ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nv_rd32 (struct nouveau_device*,int) ;
 int read_clk (struct drm_device*,int ) ;
 int read_pll_src (struct drm_device*,int) ;

__attribute__((used)) static u32
read_pll_ref(struct drm_device *dev, u32 base)
{
 struct nouveau_device *device = nouveau_dev(dev);
 struct nouveau_drm *drm = nouveau_drm(dev);
 u32 src, mast = nv_rd32(device, 0x00c040);

 switch (base) {
 case 0x004028:
  src = !!(mast & 0x00200000);
  break;
 case 0x004020:
  src = !!(mast & 0x00400000);
  break;
 case 0x004008:
  src = !!(mast & 0x00010000);
  break;
 case 0x004030:
  src = !!(mast & 0x02000000);
  break;
 case 0x00e810:
  return read_clk(dev, clk_src_crystal);
 default:
  NV_ERROR(drm, "bad pll 0x%06x\n", base);
  return 0;
 }

 if (src)
  return read_clk(dev, clk_src_href);
 return read_pll_src(dev, base);
}
