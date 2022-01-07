
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfp_single {int significand; int exponent; } ;


 int fls (int) ;
 int vfp_single_dump (char*,struct vfp_single*) ;

__attribute__((used)) static void vfp_single_normalise_denormal(struct vfp_single *vs)
{
 int bits = 31 - fls(vs->significand);

 vfp_single_dump("normalise_denormal: in", vs);

 if (bits) {
  vs->exponent -= bits - 1;
  vs->significand <<= bits;
 }

 vfp_single_dump("normalise_denormal: out", vs);
}
