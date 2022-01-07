
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int reg; } ;
struct nv04_pm_clock {int calc; TYPE_1__ pll; } ;
struct nouveau_device {scalar_t__ card_type; } ;
struct nouveau_clock {int (* pll_prog ) (struct nouveau_clock*,int,int *) ;} ;
struct drm_device {int dummy; } ;


 scalar_t__ NV_40 ;
 struct nouveau_clock* nouveau_clock (struct nouveau_device*) ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int stub1 (struct nouveau_clock*,int,int *) ;

__attribute__((used)) static void
prog_pll(struct drm_device *dev, struct nv04_pm_clock *clk)
{
 struct nouveau_device *device = nouveau_dev(dev);
 struct nouveau_clock *pclk = nouveau_clock(device);
 u32 reg = clk->pll.reg;


 if (device->card_type >= NV_40)
  reg += 4;

 pclk->pll_prog(pclk, reg, &clk->calc);
}
