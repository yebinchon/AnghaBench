
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nouveau_fb_tile {int zcomp; TYPE_2__* tag; } ;
struct TYPE_3__ {int parts; } ;
struct nouveau_fb {int tags; TYPE_1__ ram; } ;
struct TYPE_4__ {int offset; } ;


 int DIV_ROUND_UP (int,int) ;
 int nouveau_mm_head (int *,int,int,int,int,TYPE_2__**) ;
 int round_up (int,int) ;

__attribute__((used)) static void
nv35_fb_tile_comp(struct nouveau_fb *pfb, int i, u32 size, u32 flags,
    struct nouveau_fb_tile *tile)
{
 u32 tiles = DIV_ROUND_UP(size, 0x40);
 u32 tags = round_up(tiles / pfb->ram.parts, 0x40);
 if (!nouveau_mm_head(&pfb->tags, 1, tags, tags, 1, &tile->tag)) {
  if (flags & 2) tile->zcomp |= 0x04000000;
  else tile->zcomp |= 0x08000000;
  tile->zcomp |= ((tile->tag->offset ) >> 6);
  tile->zcomp |= ((tile->tag->offset + tags - 1) >> 6) << 13;



 }
}
