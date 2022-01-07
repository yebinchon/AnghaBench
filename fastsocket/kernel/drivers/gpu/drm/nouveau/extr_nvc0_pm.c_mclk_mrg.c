
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nouveau_mem_exec_func {int dev; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct nouveau_fb {TYPE_1__ ram; } ;
struct nouveau_device {int dummy; } ;


 scalar_t__ NV_MEM_TYPE_GDDR5 ;
 struct nouveau_device* nouveau_dev (int ) ;
 struct nouveau_fb* nouveau_fb (struct nouveau_device*) ;
 int nv_rd32 (struct nouveau_device*,int) ;

__attribute__((used)) static u32
mclk_mrg(struct nouveau_mem_exec_func *exec, int mr)
{
 struct nouveau_device *device = nouveau_dev(exec->dev);
 struct nouveau_fb *pfb = nouveau_fb(device);
 if (pfb->ram.type != NV_MEM_TYPE_GDDR5) {
  if (mr <= 1)
   return nv_rd32(device, 0x10f300 + ((mr - 0) * 4));
  return nv_rd32(device, 0x10f320 + ((mr - 2) * 4));
 } else {
  if (mr == 0)
   return nv_rd32(device, 0x10f300 + (mr * 4));
  else
  if (mr <= 7)
   return nv_rd32(device, 0x10f32c + (mr * 4));
  return nv_rd32(device, 0x10f34c);
 }
}
