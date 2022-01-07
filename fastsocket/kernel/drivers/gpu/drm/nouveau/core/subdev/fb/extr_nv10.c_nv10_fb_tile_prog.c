
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fb_tile {int addr; int pitch; int limit; } ;
struct nouveau_fb {int dummy; } ;


 int nv_rd32 (struct nouveau_fb*,int) ;
 int nv_wr32 (struct nouveau_fb*,int,int ) ;

void
nv10_fb_tile_prog(struct nouveau_fb *pfb, int i, struct nouveau_fb_tile *tile)
{
 nv_wr32(pfb, 0x100244 + (i * 0x10), tile->limit);
 nv_wr32(pfb, 0x100248 + (i * 0x10), tile->pitch);
 nv_wr32(pfb, 0x100240 + (i * 0x10), tile->addr);
 nv_rd32(pfb, 0x100240 + (i * 0x10));
}
