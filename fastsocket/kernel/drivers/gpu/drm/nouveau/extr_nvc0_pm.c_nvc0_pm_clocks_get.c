
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_pm_level {int shader; int core; void* vdec; void* daemon; void* copy; void* hub01; void* hub06; void* hub07; void* rop; int memory; } ;
struct drm_device {int dummy; } ;


 void* read_clk (struct drm_device*,int) ;
 int read_mem (struct drm_device*) ;

int
nvc0_pm_clocks_get(struct drm_device *dev, struct nouveau_pm_level *perflvl)
{
 perflvl->shader = read_clk(dev, 0x00);
 perflvl->core = perflvl->shader / 2;
 perflvl->memory = read_mem(dev);
 perflvl->rop = read_clk(dev, 0x01);
 perflvl->hub07 = read_clk(dev, 0x02);
 perflvl->hub06 = read_clk(dev, 0x07);
 perflvl->hub01 = read_clk(dev, 0x08);
 perflvl->copy = read_clk(dev, 0x09);
 perflvl->daemon = read_clk(dev, 0x0c);
 perflvl->vdec = read_clk(dev, 0x0e);
 return 0;
}
