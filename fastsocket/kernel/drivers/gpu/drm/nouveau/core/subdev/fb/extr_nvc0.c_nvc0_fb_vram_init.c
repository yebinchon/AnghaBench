
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int ranks; int size; int type; } ;
struct nouveau_fb {int vram; TYPE_1__ ram; } ;
struct nouveau_bios {int dummy; } ;


 struct nouveau_bios* nouveau_bios (struct nouveau_fb*) ;
 int nouveau_fb_bios_memtype (struct nouveau_bios*) ;
 int nouveau_mm_fini (int *) ;
 int nouveau_mm_init (int *,int const,int,int) ;
 int nv_debug (struct nouveau_fb*,char*,int,...) ;
 int nv_rd32 (struct nouveau_fb*,int) ;

__attribute__((used)) static int
nvc0_fb_vram_init(struct nouveau_fb *pfb)
{
 struct nouveau_bios *bios = nouveau_bios(pfb);
 const u32 rsvd_head = ( 256 * 1024) >> 12;
 const u32 rsvd_tail = (1024 * 1024) >> 12;
 u32 parts = nv_rd32(pfb, 0x022438);
 u32 pmask = nv_rd32(pfb, 0x022554);
 u32 bsize = nv_rd32(pfb, 0x10f20c);
 u32 offset, length;
 bool uniform = 1;
 int ret, part;

 nv_debug(pfb, "0x100800: 0x%08x\n", nv_rd32(pfb, 0x100800));
 nv_debug(pfb, "parts 0x%08x mask 0x%08x\n", parts, pmask);

 pfb->ram.type = nouveau_fb_bios_memtype(bios);
 pfb->ram.ranks = (nv_rd32(pfb, 0x10f200) & 0x00000004) ? 2 : 1;


 for (part = 0; part < parts; part++) {
  if (!(pmask & (1 << part))) {
   u32 psize = nv_rd32(pfb, 0x11020c + (part * 0x1000));
   if (psize != bsize) {
    if (psize < bsize)
     bsize = psize;
    uniform = 0;
   }

   nv_debug(pfb, "%d: mem_amount 0x%08x\n", part, psize);
   pfb->ram.size += (u64)psize << 20;
  }
 }


 if (uniform) {
  offset = rsvd_head;
  length = (pfb->ram.size >> 12) - rsvd_head - rsvd_tail;
  return nouveau_mm_init(&pfb->vram, offset, length, 1);
 }


 ret = nouveau_mm_init(&pfb->vram, rsvd_head, (bsize << 8) * parts, 1);
 if (ret)
  return ret;


 offset = (0x0200000000ULL >> 12) + (bsize << 8);
 length = (pfb->ram.size >> 12) - (bsize << 8) - rsvd_tail;

 ret = nouveau_mm_init(&pfb->vram, offset, length, 0);
 if (ret) {
  nouveau_mm_fini(&pfb->vram);
  return ret;
 }

 return 0;
}
