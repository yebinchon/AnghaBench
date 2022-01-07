
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fb_tile {int tag; scalar_t__ zcomp; scalar_t__ pitch; scalar_t__ limit; scalar_t__ addr; } ;
struct nouveau_fb {int tags; } ;


 int nouveau_mm_free (int *,int *) ;

void
nv20_fb_tile_fini(struct nouveau_fb *pfb, int i, struct nouveau_fb_tile *tile)
{
 tile->addr = 0;
 tile->limit = 0;
 tile->pitch = 0;
 tile->zcomp = 0;
 nouveau_mm_free(&pfb->tags, &tile->tag);
}
