
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_mem_exec_func {int dev; } ;
struct nouveau_device {int dummy; } ;


 struct nouveau_device* nouveau_dev (int ) ;
 int nv_rd32 (struct nouveau_device*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void
mclk_wait(struct nouveau_mem_exec_func *exec, u32 nsec)
{
 struct nouveau_device *device = nouveau_dev(exec->dev);
 volatile u32 post = nv_rd32(device, 0); (void)post;
 udelay((nsec + 500) / 1000);
}
