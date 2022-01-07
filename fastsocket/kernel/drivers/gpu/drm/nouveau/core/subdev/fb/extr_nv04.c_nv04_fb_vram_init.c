
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; int type; } ;
struct nouveau_fb {TYPE_1__ ram; } ;


 int NV04_PFB_BOOT_0 ;
 int NV04_PFB_BOOT_0_RAM_AMOUNT ;




 int NV_MEM_TYPE_SDRAM ;
 int NV_MEM_TYPE_SGRAM ;
 int nv_rd32 (struct nouveau_fb*,int ) ;

__attribute__((used)) static int
nv04_fb_vram_init(struct nouveau_fb *pfb)
{
 u32 boot0 = nv_rd32(pfb, NV04_PFB_BOOT_0);
 if (boot0 & 0x00000100) {
  pfb->ram.size = ((boot0 >> 12) & 0xf) * 2 + 2;
  pfb->ram.size *= 1024 * 1024;
 } else {
  switch (boot0 & NV04_PFB_BOOT_0_RAM_AMOUNT) {
  case 130:
   pfb->ram.size = 32 * 1024 * 1024;
   break;
  case 131:
   pfb->ram.size = 16 * 1024 * 1024;
   break;
  case 128:
   pfb->ram.size = 8 * 1024 * 1024;
   break;
  case 129:
   pfb->ram.size = 4 * 1024 * 1024;
   break;
  }
 }

 if ((boot0 & 0x00000038) <= 0x10)
  pfb->ram.type = NV_MEM_TYPE_SGRAM;
 else
  pfb->ram.type = NV_MEM_TYPE_SDRAM;
 return 0;
}
