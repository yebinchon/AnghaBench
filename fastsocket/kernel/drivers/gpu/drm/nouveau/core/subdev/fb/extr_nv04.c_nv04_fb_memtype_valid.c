
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_fb {int dummy; } ;



bool
nv04_fb_memtype_valid(struct nouveau_fb *pfb, u32 tile_flags)
{
 if (!(tile_flags & 0xff00))
  return 1;

 return 0;
}
