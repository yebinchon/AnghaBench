
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;


 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nv_rd32 (struct nouveau_device*,int) ;

__attribute__((used)) static u32
read_pll_1(struct drm_device *dev, u32 reg)
{
 struct nouveau_device *device = nouveau_dev(dev);
 u32 ctrl = nv_rd32(device, reg + 0x00);
 int P = (ctrl & 0x00070000) >> 16;
 int N = (ctrl & 0x0000ff00) >> 8;
 int M = (ctrl & 0x000000ff) >> 0;
 u32 ref = 27000, clk = 0;

 if (ctrl & 0x80000000)
  clk = ref * N / M;

 return clk >> P;
}
