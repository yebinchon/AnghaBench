
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;


 int VPP_PORT ;
 unsigned long inl (int ) ;
 int outl (unsigned long,int ) ;

__attribute__((used)) static void l440gx_set_vpp(struct map_info *map, int vpp)
{
 unsigned long l;

 l = inl(VPP_PORT);
 if (vpp) {
  l |= 1;
 } else {
  l &= ~1;
 }
 outl(l, VPP_PORT);
}
