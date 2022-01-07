
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vfp_double {scalar_t__ sign; int exponent; int significand; } ;
typedef scalar_t__ s64 ;


 int FPSCR_IOC ;
 int VFP_DENORMAL ;
 int VFP_DOUBLE_LOW_BITS_MASK ;
 int VFP_INFINITY ;
 int VFP_NAN ;
 int VFP_ZERO ;
 int add128 (int*,int*,int,int,int,int) ;
 int mul64to128 (int*,int*,int,int) ;
 int shift64left (int*,int*,int) ;
 int sub128 (int*,int*,int,int ,int,int) ;
 struct vfp_double vfp_double_default_qnan ;
 int vfp_double_dump (char*,struct vfp_double*) ;
 int vfp_double_normalise_denormal (struct vfp_double*) ;
 int vfp_double_normaliseround (int,struct vfp_double*,int,int ,char*) ;
 int vfp_double_pack (struct vfp_double*) ;
 int vfp_double_type (struct vfp_double*) ;
 int vfp_double_unpack (struct vfp_double*,int ) ;
 scalar_t__ vfp_estimate_div128to64 (int,int ,int) ;
 scalar_t__ vfp_estimate_sqrt_significand (int,int) ;
 int vfp_get_double (int) ;
 int vfp_propagate_nan (struct vfp_double*,struct vfp_double*,int *,int) ;
 int vfp_put_double (int ,int) ;
 int vfp_shiftright64jamming (int,int) ;

__attribute__((used)) static u32 vfp_double_fsqrt(int dd, int unused, int dm, u32 fpscr)
{
 struct vfp_double vdm, vdd;
 int ret, tm;

 vfp_double_unpack(&vdm, vfp_get_double(dm));
 tm = vfp_double_type(&vdm);
 if (tm & (VFP_NAN|VFP_INFINITY)) {
  struct vfp_double *vdp = &vdd;

  if (tm & VFP_NAN)
   ret = vfp_propagate_nan(vdp, &vdm, ((void*)0), fpscr);
  else if (vdm.sign == 0) {
 sqrt_copy:
   vdp = &vdm;
   ret = 0;
  } else {
 sqrt_invalid:
   vdp = &vfp_double_default_qnan;
   ret = FPSCR_IOC;
  }
  vfp_put_double(vfp_double_pack(vdp), dd);
  return ret;
 }




 if (tm & VFP_ZERO)
  goto sqrt_copy;




 if (tm & VFP_DENORMAL)
  vfp_double_normalise_denormal(&vdm);




 if (vdm.sign)
  goto sqrt_invalid;

 vfp_double_dump("sqrt", &vdm);




 vdd.sign = 0;
 vdd.exponent = ((vdm.exponent - 1023) >> 1) + 1023;
 vdd.significand = (u64)vfp_estimate_sqrt_significand(vdm.exponent, vdm.significand >> 32) << 31;

 vfp_double_dump("sqrt estimate1", &vdd);

 vdm.significand >>= 1 + (vdm.exponent & 1);
 vdd.significand += 2 + vfp_estimate_div128to64(vdm.significand, 0, vdd.significand);

 vfp_double_dump("sqrt estimate2", &vdd);




 if ((vdd.significand & VFP_DOUBLE_LOW_BITS_MASK) <= 5) {
  if (vdd.significand < 2) {
   vdd.significand = ~0ULL;
  } else {
   u64 termh, terml, remh, reml;
   vdm.significand <<= 2;
   mul64to128(&termh, &terml, vdd.significand, vdd.significand);
   sub128(&remh, &reml, vdm.significand, 0, termh, terml);
   while ((s64)remh < 0) {
    vdd.significand -= 1;
    shift64left(&termh, &terml, vdd.significand);
    terml |= 1;
    add128(&remh, &reml, remh, reml, termh, terml);
   }
   vdd.significand |= (remh | reml) != 0;
  }
 }
 vdd.significand = vfp_shiftright64jamming(vdd.significand, 1);

 return vfp_double_normaliseround(dd, &vdd, fpscr, 0, "fsqrt");
}
