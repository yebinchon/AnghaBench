
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int type; } ;
struct nouveau_fb {TYPE_1__ ram; } ;


 int NV_MEM_TYPE_STOLEN ;
 int nv_rd32 (struct nouveau_fb*,int) ;

__attribute__((used)) static int
nv4e_fb_vram_init(struct nouveau_fb *pfb)
{
 pfb->ram.size = nv_rd32(pfb, 0x10020c) & 0xff000000;
 pfb->ram.type = NV_MEM_TYPE_STOLEN;
 return 0;
}
