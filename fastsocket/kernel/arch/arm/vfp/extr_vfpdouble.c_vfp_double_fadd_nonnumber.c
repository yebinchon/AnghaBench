
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfp_double {int sign; } ;


 int FPSCR_IOC ;
 int VFP_INFINITY ;
 int VFP_NUMBER ;
 struct vfp_double vfp_double_default_qnan ;
 int vfp_double_type (struct vfp_double*) ;
 int vfp_propagate_nan (struct vfp_double*,struct vfp_double*,struct vfp_double*,int ) ;

__attribute__((used)) static u32
vfp_double_fadd_nonnumber(struct vfp_double *vdd, struct vfp_double *vdn,
     struct vfp_double *vdm, u32 fpscr)
{
 struct vfp_double *vdp;
 u32 exceptions = 0;
 int tn, tm;

 tn = vfp_double_type(vdn);
 tm = vfp_double_type(vdm);

 if (tn & tm & VFP_INFINITY) {



  if (vdn->sign ^ vdm->sign) {



   exceptions = FPSCR_IOC;
   vdp = &vfp_double_default_qnan;
  } else {



   vdp = vdn;
  }
 } else if (tn & VFP_INFINITY && tm & VFP_NUMBER) {



  vdp = vdn;
 } else {



  return vfp_propagate_nan(vdd, vdn, vdm, fpscr);
 }
 *vdd = *vdp;
 return exceptions;
}
