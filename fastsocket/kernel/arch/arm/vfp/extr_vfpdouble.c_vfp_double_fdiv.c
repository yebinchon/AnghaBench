
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct vfp_double {int sign; int exponent; int significand; } ;
typedef scalar_t__ s64 ;


 int FPSCR_DZC ;
 int FPSCR_IOC ;
 int VFP_DENORMAL ;
 int VFP_INFINITY ;
 int VFP_NAN ;
 int VFP_ZERO ;
 int add128 (scalar_t__*,scalar_t__*,scalar_t__,scalar_t__,int ,int) ;
 int mul64to128 (scalar_t__*,scalar_t__*,int,int) ;
 int sub128 (scalar_t__*,scalar_t__*,int,int ,scalar_t__,scalar_t__) ;
 struct vfp_double vfp_double_default_qnan ;
 int vfp_double_normalise_denormal (struct vfp_double*) ;
 int vfp_double_normaliseround (int,struct vfp_double*,int ,int ,char*) ;
 int vfp_double_pack (struct vfp_double*) ;
 int vfp_double_type (struct vfp_double*) ;
 int vfp_double_unpack (struct vfp_double*,int ) ;
 int vfp_estimate_div128to64 (int,int ,int) ;
 int vfp_get_double (int) ;
 int vfp_propagate_nan (struct vfp_double*,struct vfp_double*,struct vfp_double*,int ) ;
 int vfp_put_double (int ,int) ;

__attribute__((used)) static u32 vfp_double_fdiv(int dd, int dn, int dm, u32 fpscr)
{
 struct vfp_double vdd, vdn, vdm;
 u32 exceptions = 0;
 int tm, tn;

 vfp_double_unpack(&vdn, vfp_get_double(dn));
 vfp_double_unpack(&vdm, vfp_get_double(dm));

 vdd.sign = vdn.sign ^ vdm.sign;

 tn = vfp_double_type(&vdn);
 tm = vfp_double_type(&vdm);




 if (tn & VFP_NAN)
  goto vdn_nan;




 if (tm & VFP_NAN)
  goto vdm_nan;





 if (tm & tn & (VFP_INFINITY|VFP_ZERO))
  goto invalid;




 if (tn & VFP_INFINITY)
  goto infinity;




 if (tm & VFP_ZERO)
  goto divzero;




 if (tm & VFP_INFINITY || tn & VFP_ZERO)
  goto zero;

 if (tn & VFP_DENORMAL)
  vfp_double_normalise_denormal(&vdn);
 if (tm & VFP_DENORMAL)
  vfp_double_normalise_denormal(&vdm);




 vdd.exponent = vdn.exponent - vdm.exponent + 1023 - 1;
 vdm.significand <<= 1;
 if (vdm.significand <= (2 * vdn.significand)) {
  vdn.significand >>= 1;
  vdd.exponent++;
 }
 vdd.significand = vfp_estimate_div128to64(vdn.significand, 0, vdm.significand);
 if ((vdd.significand & 0x1ff) <= 2) {
  u64 termh, terml, remh, reml;
  mul64to128(&termh, &terml, vdm.significand, vdd.significand);
  sub128(&remh, &reml, vdn.significand, 0, termh, terml);
  while ((s64)remh < 0) {
   vdd.significand -= 1;
   add128(&remh, &reml, remh, reml, 0, vdm.significand);
  }
  vdd.significand |= (reml != 0);
 }
 return vfp_double_normaliseround(dd, &vdd, fpscr, 0, "fdiv");

 vdn_nan:
 exceptions = vfp_propagate_nan(&vdd, &vdn, &vdm, fpscr);
 pack:
 vfp_put_double(vfp_double_pack(&vdd), dd);
 return exceptions;

 vdm_nan:
 exceptions = vfp_propagate_nan(&vdd, &vdm, &vdn, fpscr);
 goto pack;

 zero:
 vdd.exponent = 0;
 vdd.significand = 0;
 goto pack;

 divzero:
 exceptions = FPSCR_DZC;
 infinity:
 vdd.exponent = 2047;
 vdd.significand = 0;
 goto pack;

 invalid:
 vfp_put_double(vfp_double_pack(&vfp_double_default_qnan), dd);
 return FPSCR_IOC;
}
