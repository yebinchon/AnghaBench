
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; int type; } ;
struct nouveau_fb {TYPE_1__ ram; } ;


 int NV_MEM_TYPE_DDR1 ;
 int NV_MEM_TYPE_SDRAM ;
 int nv_rd32 (struct nouveau_fb*,int) ;

__attribute__((used)) static int
nv10_fb_vram_init(struct nouveau_fb *pfb)
{
 u32 cfg0 = nv_rd32(pfb, 0x100200);
 if (cfg0 & 0x00000001)
  pfb->ram.type = NV_MEM_TYPE_DDR1;
 else
  pfb->ram.type = NV_MEM_TYPE_SDRAM;

 pfb->ram.size = nv_rd32(pfb, 0x10020c) & 0xff000000;
 return 0;
}
