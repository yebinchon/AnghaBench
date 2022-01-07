
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_mem_exec_func {int dev; } ;
struct nouveau_device {int dummy; } ;


 struct nouveau_device* nouveau_dev (int ) ;
 int nv_wr32 (struct nouveau_device*,int,int) ;

__attribute__((used)) static void
mclk_refresh_self(struct nouveau_mem_exec_func *exec, bool enable)
{
 struct nouveau_device *device = nouveau_dev(exec->dev);
 nv_wr32(device, 0x1002dc, enable ? 0x00000001 : 0x00000000);
}
