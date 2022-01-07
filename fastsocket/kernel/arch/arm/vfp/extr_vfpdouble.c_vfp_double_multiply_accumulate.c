
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfp_double {scalar_t__ exponent; void* sign; scalar_t__ significand; } ;


 int NEG_MULTIPLY ;
 int NEG_SUBTRACT ;
 int vfp_double_add (struct vfp_double*,struct vfp_double*,struct vfp_double*,int) ;
 int vfp_double_multiply (struct vfp_double*,struct vfp_double*,struct vfp_double*,int) ;
 int vfp_double_normalise_denormal (struct vfp_double*) ;
 int vfp_double_normaliseround (int,struct vfp_double*,int,int,char*) ;
 int vfp_double_unpack (struct vfp_double*,int ) ;
 int vfp_get_double (int) ;
 void* vfp_sign_negate (void*) ;

__attribute__((used)) static u32
vfp_double_multiply_accumulate(int dd, int dn, int dm, u32 fpscr, u32 negate, char *func)
{
 struct vfp_double vdd, vdp, vdn, vdm;
 u32 exceptions;

 vfp_double_unpack(&vdn, vfp_get_double(dn));
 if (vdn.exponent == 0 && vdn.significand)
  vfp_double_normalise_denormal(&vdn);

 vfp_double_unpack(&vdm, vfp_get_double(dm));
 if (vdm.exponent == 0 && vdm.significand)
  vfp_double_normalise_denormal(&vdm);

 exceptions = vfp_double_multiply(&vdp, &vdn, &vdm, fpscr);
 if (negate & NEG_MULTIPLY)
  vdp.sign = vfp_sign_negate(vdp.sign);

 vfp_double_unpack(&vdn, vfp_get_double(dd));
 if (negate & NEG_SUBTRACT)
  vdn.sign = vfp_sign_negate(vdn.sign);

 exceptions |= vfp_double_add(&vdd, &vdn, &vdp, fpscr);

 return vfp_double_normaliseround(dd, &vdd, fpscr, exceptions, func);
}
