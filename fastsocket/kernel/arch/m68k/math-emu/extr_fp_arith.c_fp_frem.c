
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fp_ext {int dummy; } ;


 int FPCR_ROUND_RN ;
 int PINSTR ;
 int dprint (int ,char*) ;
 struct fp_ext* modrem_kernel (struct fp_ext*,struct fp_ext*,int ) ;

struct fp_ext *
fp_frem(struct fp_ext *dest, struct fp_ext *src)
{
 dprint(PINSTR, "frem\n");
 return modrem_kernel(dest, src, FPCR_ROUND_RN);
}
