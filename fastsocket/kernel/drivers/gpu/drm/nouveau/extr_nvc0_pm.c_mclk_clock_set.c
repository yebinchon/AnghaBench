
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int coef; } ;
struct nvc0_pm_state {TYPE_1__ mem; } ;
struct nouveau_mem_exec_func {struct nvc0_pm_state* priv; int dev; } ;
struct nouveau_device {int dummy; } ;


 struct nouveau_device* nouveau_dev (int ) ;
 int nv_rd32 (struct nouveau_device*,int) ;
 int nv_wait (struct nouveau_device*,int,int,int) ;
 int nv_wr32 (struct nouveau_device*,int,int) ;

__attribute__((used)) static void
mclk_clock_set(struct nouveau_mem_exec_func *exec)
{
 struct nouveau_device *device = nouveau_dev(exec->dev);
 struct nvc0_pm_state *info = exec->priv;
 u32 ctrl = nv_rd32(device, 0x132000);

 nv_wr32(device, 0x137360, 0x00000001);
 nv_wr32(device, 0x137370, 0x00000000);
 nv_wr32(device, 0x137380, 0x00000000);
 if (ctrl & 0x00000001)
  nv_wr32(device, 0x132000, (ctrl &= ~0x00000001));

 nv_wr32(device, 0x132004, info->mem.coef);
 nv_wr32(device, 0x132000, (ctrl |= 0x00000001));
 nv_wait(device, 0x137390, 0x00000002, 0x00000002);
 nv_wr32(device, 0x132018, 0x00005000);

 nv_wr32(device, 0x137370, 0x00000001);
 nv_wr32(device, 0x137380, 0x00000001);
 nv_wr32(device, 0x137360, 0x00000000);
}
