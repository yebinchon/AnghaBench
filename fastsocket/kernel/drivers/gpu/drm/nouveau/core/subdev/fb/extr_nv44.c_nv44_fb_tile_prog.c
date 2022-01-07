
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fb_tile {int addr; int pitch; int limit; } ;
struct nouveau_fb {int dummy; } ;


 int nv_rd32 (struct nouveau_fb*,int) ;
 int nv_wr32 (struct nouveau_fb*,int,int ) ;

void
nv44_fb_tile_prog(struct nouveau_fb *pfb, int i, struct nouveau_fb_tile *tile)
{
 nv_wr32(pfb, 0x100604 + (i * 0x10), tile->limit);
 nv_wr32(pfb, 0x100608 + (i * 0x10), tile->pitch);
 nv_wr32(pfb, 0x100600 + (i * 0x10), tile->addr);
 nv_rd32(pfb, 0x100600 + (i * 0x10));
}
