
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvc0_pm_clock {int ssel; int ddiv; int mdiv; int coef; int dsrc; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;


 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nv_mask (struct nouveau_device*,int,int,int) ;
 int nv_rd32 (struct nouveau_device*,int) ;
 int nv_wait (struct nouveau_device*,int,int,int) ;
 int nv_wr32 (struct nouveau_device*,int,int ) ;

__attribute__((used)) static void
prog_clk(struct drm_device *dev, int clk, struct nvc0_pm_clock *info)
{
 struct nouveau_device *device = nouveau_dev(dev);


 if (clk < 7 && !info->ssel) {
  nv_mask(device, 0x1371d0 + (clk * 0x04), 0x80003f3f, info->ddiv);
  nv_wr32(device, 0x137160 + (clk * 0x04), info->dsrc);
 }


 nv_mask(device, 0x137100, (1 << clk), 0x00000000);
 nv_wait(device, 0x137100, (1 << clk), 0x00000000);


 if (clk < 7) {

  u32 base = 0x137000 + (clk * 0x20);
  u32 ctrl = nv_rd32(device, base + 0x00);
  if (ctrl & 0x00000001) {
   nv_mask(device, base + 0x00, 0x00000004, 0x00000000);
   nv_mask(device, base + 0x00, 0x00000001, 0x00000000);
  }

  if (info->ssel) {
   nv_wr32(device, base + 0x04, info->coef);
   nv_mask(device, base + 0x00, 0x00000001, 0x00000001);
   nv_wait(device, base + 0x00, 0x00020000, 0x00020000);
   nv_mask(device, base + 0x00, 0x00020004, 0x00000004);
  }
 }


 nv_mask(device, 0x137100, (1 << clk), info->ssel);
 nv_wait(device, 0x137100, (1 << clk), info->ssel);
 nv_mask(device, 0x137250 + (clk * 0x04), 0x00003f3f, info->mdiv);
}
