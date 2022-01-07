
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct nouveau_fb {int dummy; } ;


 int likely (int) ;
 int* types ;

__attribute__((used)) static bool
nvc0_fb_memtype_valid(struct nouveau_fb *pfb, u32 tile_flags)
{
 u8 memtype = (tile_flags & 0x0000ff00) >> 8;
 return likely((types[memtype] == 1));
}
