
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ctrl {int hdw; } ;


 int PVR2_CVAL_HSM_FAIL ;
 int PVR2_CVAL_HSM_FULL ;
 int PVR2_CVAL_HSM_HIGH ;
 int pvr2_hdw_is_hsm (int ) ;

__attribute__((used)) static int ctrl_hsm_get(struct pvr2_ctrl *cptr,int *vp)
{
 int result = pvr2_hdw_is_hsm(cptr->hdw);
 *vp = PVR2_CVAL_HSM_FULL;
 if (result < 0) *vp = PVR2_CVAL_HSM_FAIL;
 if (result) *vp = PVR2_CVAL_HSM_HIGH;
 return 0;
}
