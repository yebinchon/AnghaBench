
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_fb_tile {int addr; int pitch; scalar_t__ limit; } ;
struct nouveau_fb {int dummy; } ;


 scalar_t__ max (unsigned int,int) ;

void
nv46_fb_tile_init(struct nouveau_fb *pfb, int i, u32 addr, u32 size, u32 pitch,
    u32 flags, struct nouveau_fb_tile *tile)
{

 if (!(flags & 4)) tile->addr = (0 << 3);
 else tile->addr = (1 << 3);

 tile->addr |= 0x00000001;
 tile->addr |= addr;
 tile->limit = max(1u, addr + size) - 1;
 tile->pitch = pitch;
}
