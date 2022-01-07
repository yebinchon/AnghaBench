
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_drm {int dummy; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct creg {int clk; } ;


 int NV_DEBUG (struct nouveau_drm*,char*,int) ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nv_mask (struct nouveau_device*,int,int,int) ;

__attribute__((used)) static void
prog_clk(struct drm_device *dev, int clk, struct creg *reg)
{
 struct nouveau_device *device = nouveau_dev(dev);
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (!reg->clk) {
  NV_DEBUG(drm, "no clock for %02x\n", clk);
  return;
 }

 nv_mask(device, 0x004120 + (clk * 4), 0x003f3141, 0x00000101 | reg->clk);
}
