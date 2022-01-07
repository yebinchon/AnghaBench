
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; int parts; int type; } ;
struct nouveau_fb {TYPE_1__ ram; } ;


 int NV_MEM_TYPE_DDR1 ;
 int NV_MEM_TYPE_DDR2 ;
 int NV_MEM_TYPE_GDDR3 ;
 int nv_rd32 (struct nouveau_fb*,int) ;

__attribute__((used)) static int
nv49_fb_vram_init(struct nouveau_fb *pfb)
{
 u32 pfb914 = nv_rd32(pfb, 0x100914);

 switch (pfb914 & 0x00000003) {
 case 0x00000000: pfb->ram.type = NV_MEM_TYPE_DDR1; break;
 case 0x00000001: pfb->ram.type = NV_MEM_TYPE_DDR2; break;
 case 0x00000002: pfb->ram.type = NV_MEM_TYPE_GDDR3; break;
 case 0x00000003: break;
 }

 pfb->ram.size = nv_rd32(pfb, 0x10020c) & 0xff000000;
 pfb->ram.parts = (nv_rd32(pfb, 0x100200) & 0x00000003) + 1;
 return nv_rd32(pfb, 0x100320);
}
