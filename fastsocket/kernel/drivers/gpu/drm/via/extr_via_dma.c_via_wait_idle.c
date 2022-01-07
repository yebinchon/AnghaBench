
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drm_via_private_t ;


 int VIA_2D_ENG_BUSY ;
 int VIA_3D_ENG_BUSY ;
 int VIA_CMD_RGTR_BUSY ;
 int VIA_READ (int ) ;
 int VIA_REG_STATUS ;
 int VIA_VR_QUEUE_BUSY ;

__attribute__((used)) static int via_wait_idle(drm_via_private_t *dev_priv)
{
 int count = 10000000;

 while (!(VIA_READ(VIA_REG_STATUS) & VIA_VR_QUEUE_BUSY) && --count)
  ;

 while (count && (VIA_READ(VIA_REG_STATUS) &
      (VIA_CMD_RGTR_BUSY | VIA_2D_ENG_BUSY |
       VIA_3D_ENG_BUSY)))
  --count;
 return count;
}
