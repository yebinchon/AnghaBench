
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vfp_single {int exponent; scalar_t__ significand; int sign; } ;
struct vfp_double {int significand; int exponent; int sign; } ;
typedef int s32 ;


 int FPSCR_IOC ;
 int VFP_DENORMAL ;
 int VFP_DOUBLE_SIGNIFICAND_QNAN ;
 int VFP_INFINITY ;
 int VFP_NAN ;
 int VFP_QNAN ;
 int VFP_SNAN ;
 int VFP_ZERO ;
 int vfp_double_normaliseround (int,struct vfp_double*,int ,int ,char*) ;
 int vfp_double_pack (struct vfp_double*) ;
 int vfp_put_double (int ,int) ;
 int vfp_single_normalise_denormal (struct vfp_single*) ;
 int vfp_single_type (struct vfp_single*) ;
 int vfp_single_unpack (struct vfp_single*,int ) ;

__attribute__((used)) static u32 vfp_single_fcvtd(int dd, int unused, s32 m, u32 fpscr)
{
 struct vfp_single vsm;
 struct vfp_double vdd;
 int tm;
 u32 exceptions = 0;

 vfp_single_unpack(&vsm, m);

 tm = vfp_single_type(&vsm);




 if (tm == VFP_SNAN)
  exceptions = FPSCR_IOC;

 if (tm & VFP_DENORMAL)
  vfp_single_normalise_denormal(&vsm);

 vdd.sign = vsm.sign;
 vdd.significand = (u64)vsm.significand << 32;




 if (tm & (VFP_INFINITY|VFP_NAN)) {
  vdd.exponent = 2047;
  if (tm == VFP_QNAN)
   vdd.significand |= VFP_DOUBLE_SIGNIFICAND_QNAN;
  goto pack_nan;
 } else if (tm & VFP_ZERO)
  vdd.exponent = 0;
 else
  vdd.exponent = vsm.exponent + (1023 - 127);

 return vfp_double_normaliseround(dd, &vdd, fpscr, exceptions, "fcvtd");

 pack_nan:
 vfp_put_double(vfp_double_pack(&vdd), dd);
 return exceptions;
}
