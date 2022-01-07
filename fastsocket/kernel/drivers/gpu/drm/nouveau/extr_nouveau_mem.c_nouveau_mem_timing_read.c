
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nouveau_pm_memtiming {int id; int* reg; int tCWL; int* mr; int odt; int drive_strength; } ;
struct TYPE_2__ {int type; } ;
struct nouveau_fb {TYPE_1__ ram; } ;
struct nouveau_device {int card_type; } ;
struct drm_device {int dummy; } ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 struct nouveau_fb* nouveau_fb (struct nouveau_device*) ;
 int nv_rd32 (struct nouveau_device*,int) ;

void
nouveau_mem_timing_read(struct drm_device *dev, struct nouveau_pm_memtiming *t)
{
 struct nouveau_device *device = nouveau_dev(dev);
 struct nouveau_fb *pfb = nouveau_fb(device);
 u32 timing_base, timing_regs, mr_base;
 int i;

 if (device->card_type >= 0xC0) {
  timing_base = 0x10f290;
  mr_base = 0x10f300;
 } else {
  timing_base = 0x100220;
  mr_base = 0x1002c0;
 }

 t->id = -1;

 switch (device->card_type) {
 case 134:
  timing_regs = 9;
  break;
 case 133:
 case 132:
  timing_regs = 5;
  break;
 case 136:
 case 135:
  timing_regs = 3;
  break;
 default:
  timing_regs = 0;
  return;
 }
 for(i = 0; i < timing_regs; i++)
  t->reg[i] = nv_rd32(device, timing_base + (0x04 * i));

 t->tCWL = 0;
 if (device->card_type < 133) {
  t->tCWL = ((nv_rd32(device, 0x100228) & 0x0f000000) >> 24) + 1;
 } else if (device->card_type <= 132) {
  t->tCWL = ((nv_rd32(device, 0x10f294) & 0x00000f80) >> 7);
 }

 t->mr[0] = nv_rd32(device, mr_base);
 t->mr[1] = nv_rd32(device, mr_base + 0x04);
 t->mr[2] = nv_rd32(device, mr_base + 0x20);
 t->mr[3] = nv_rd32(device, mr_base + 0x24);

 t->odt = 0;
 t->drive_strength = 0;

 switch (pfb->ram.type) {
 case 130:
  t->odt |= (t->mr[1] & 0x200) >> 7;
 case 131:
  t->odt |= (t->mr[1] & 0x04) >> 2 |
     (t->mr[1] & 0x40) >> 5;
  break;
 case 129:
 case 128:
  t->drive_strength = t->mr[1] & 0x03;
  t->odt = (t->mr[1] & 0x0c) >> 2;
  break;
 default:
  break;
 }
}
