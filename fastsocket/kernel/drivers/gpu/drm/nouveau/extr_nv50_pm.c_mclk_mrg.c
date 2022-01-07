
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_mem_exec_func {int dev; } ;
struct nouveau_device {int dummy; } ;


 struct nouveau_device* nouveau_dev (int ) ;
 int nv_rd32 (struct nouveau_device*,int) ;

__attribute__((used)) static u32
mclk_mrg(struct nouveau_mem_exec_func *exec, int mr)
{
 struct nouveau_device *device = nouveau_dev(exec->dev);
 if (mr <= 1)
  return nv_rd32(device, 0x1002c0 + ((mr - 0) * 4));
 if (mr <= 3)
  return nv_rd32(device, 0x1002e0 + ((mr - 2) * 4));
 return 0;
}
