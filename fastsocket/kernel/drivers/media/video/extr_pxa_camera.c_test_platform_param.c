
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_camera_dev {int platform_flags; } ;


 int EINVAL ;
 int PXA_CAMERA_DATAWIDTH_10 ;
 int PXA_CAMERA_DATAWIDTH_8 ;
 int PXA_CAMERA_DATAWIDTH_9 ;
 int PXA_CAMERA_MASTER ;
 unsigned long SOCAM_DATAWIDTH_10 ;
 unsigned long SOCAM_DATAWIDTH_8 ;
 unsigned long SOCAM_DATAWIDTH_9 ;
 unsigned long SOCAM_DATA_ACTIVE_HIGH ;
 unsigned long SOCAM_HSYNC_ACTIVE_HIGH ;
 unsigned long SOCAM_HSYNC_ACTIVE_LOW ;
 unsigned long SOCAM_MASTER ;
 unsigned long SOCAM_PCLK_SAMPLE_FALLING ;
 unsigned long SOCAM_PCLK_SAMPLE_RISING ;
 unsigned long SOCAM_SLAVE ;
 unsigned long SOCAM_VSYNC_ACTIVE_HIGH ;
 unsigned long SOCAM_VSYNC_ACTIVE_LOW ;

__attribute__((used)) static int test_platform_param(struct pxa_camera_dev *pcdev,
          unsigned char buswidth, unsigned long *flags)
{





 *flags = (pcdev->platform_flags & PXA_CAMERA_MASTER ?
    SOCAM_MASTER : SOCAM_SLAVE) |
  SOCAM_HSYNC_ACTIVE_HIGH |
  SOCAM_HSYNC_ACTIVE_LOW |
  SOCAM_VSYNC_ACTIVE_HIGH |
  SOCAM_VSYNC_ACTIVE_LOW |
  SOCAM_DATA_ACTIVE_HIGH |
  SOCAM_PCLK_SAMPLE_RISING |
  SOCAM_PCLK_SAMPLE_FALLING;


 switch (buswidth) {
 case 10:
  if (!(pcdev->platform_flags & PXA_CAMERA_DATAWIDTH_10))
   return -EINVAL;
  *flags |= SOCAM_DATAWIDTH_10;
  break;
 case 9:
  if (!(pcdev->platform_flags & PXA_CAMERA_DATAWIDTH_9))
   return -EINVAL;
  *flags |= SOCAM_DATAWIDTH_9;
  break;
 case 8:
  if (!(pcdev->platform_flags & PXA_CAMERA_DATAWIDTH_8))
   return -EINVAL;
  *flags |= SOCAM_DATAWIDTH_8;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
