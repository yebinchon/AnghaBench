
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vfp_single {int exponent; int sign; int significand; } ;


 int FPSCR_IOC ;
 int pr_debug (char*) ;
 int vfp_hi64to32jamming (int) ;
 int vfp_propagate_nan (struct vfp_single*,struct vfp_single*,struct vfp_single*,int ) ;
 struct vfp_single vfp_single_default_qnan ;
 int vfp_single_dump (char*,struct vfp_single*) ;

__attribute__((used)) static u32
vfp_single_multiply(struct vfp_single *vsd, struct vfp_single *vsn, struct vfp_single *vsm, u32 fpscr)
{
 vfp_single_dump("VSN", vsn);
 vfp_single_dump("VSM", vsm);






 if (vsn->exponent < vsm->exponent) {
  struct vfp_single *t = vsn;
  vsn = vsm;
  vsm = t;
  pr_debug("VFP: swapping M <-> N\n");
 }

 vsd->sign = vsn->sign ^ vsm->sign;




 if (vsn->exponent == 255) {
  if (vsn->significand || (vsm->exponent == 255 && vsm->significand))
   return vfp_propagate_nan(vsd, vsn, vsm, fpscr);
  if ((vsm->exponent | vsm->significand) == 0) {
   *vsd = vfp_single_default_qnan;
   return FPSCR_IOC;
  }
  vsd->exponent = vsn->exponent;
  vsd->significand = 0;
  return 0;
 }





 if ((vsm->exponent | vsm->significand) == 0) {
  vsd->exponent = 0;
  vsd->significand = 0;
  return 0;
 }






 vsd->exponent = vsn->exponent + vsm->exponent - 127 + 2;
 vsd->significand = vfp_hi64to32jamming((u64)vsn->significand * vsm->significand);

 vfp_single_dump("VSD", vsd);
 return 0;
}
