
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; int type; } ;
struct nouveau_fb {TYPE_1__ ram; } ;


 int NV_MEM_TYPE_DDR1 ;
 int NV_MEM_TYPE_DDR2 ;
 int NV_MEM_TYPE_GDDR3 ;
 int nv_rd32 (struct nouveau_fb*,int) ;

int
nv44_fb_vram_init(struct nouveau_fb *pfb)
{
 u32 pfb474 = nv_rd32(pfb, 0x100474);
 if (pfb474 & 0x00000004)
  pfb->ram.type = NV_MEM_TYPE_GDDR3;
 if (pfb474 & 0x00000002)
  pfb->ram.type = NV_MEM_TYPE_DDR2;
 if (pfb474 & 0x00000001)
  pfb->ram.type = NV_MEM_TYPE_DDR1;

 pfb->ram.size = nv_rd32(pfb, 0x10020c) & 0xff000000;
 return 0;
}
