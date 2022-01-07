
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfp_single {int significand; } ;


 int FPSCR_DEFAULT_NAN ;
 int FPSCR_IOC ;
 int VFP_NAN_FLAG ;
 int VFP_QNAN ;
 int VFP_SINGLE_SIGNIFICAND_QNAN ;
 int VFP_SNAN ;
 struct vfp_single vfp_single_default_qnan ;
 int vfp_single_type (struct vfp_single*) ;

__attribute__((used)) static u32
vfp_propagate_nan(struct vfp_single *vsd, struct vfp_single *vsn,
    struct vfp_single *vsm, u32 fpscr)
{
 struct vfp_single *nan;
 int tn, tm = 0;

 tn = vfp_single_type(vsn);

 if (vsm)
  tm = vfp_single_type(vsm);

 if (fpscr & FPSCR_DEFAULT_NAN)



  nan = &vfp_single_default_qnan;
 else {





  if (tn == VFP_SNAN || (tm != VFP_SNAN && tn == VFP_QNAN))
   nan = vsn;
  else
   nan = vsm;



  nan->significand |= VFP_SINGLE_SIGNIFICAND_QNAN;
 }

 *vsd = *nan;




 return tn == VFP_SNAN || tm == VFP_SNAN ? FPSCR_IOC : VFP_NAN_FLAG;
}
