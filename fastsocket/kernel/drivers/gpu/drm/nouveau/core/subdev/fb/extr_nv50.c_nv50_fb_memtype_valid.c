
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_fb {int dummy; } ;


 scalar_t__* types ;

__attribute__((used)) static bool
nv50_fb_memtype_valid(struct nouveau_fb *pfb, u32 memtype)
{
 return types[(memtype & 0xff00) >> 8] != 0;
}
