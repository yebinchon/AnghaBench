
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ccdc_a_law {scalar_t__ enable; } ;
struct TYPE_4__ {struct ccdc_a_law alaw; } ;
struct TYPE_6__ {TYPE_1__ config_params; } ;
struct TYPE_5__ {scalar_t__ pix_order; } ;


 scalar_t__ CCDC_PIXORDER_YCBYCR ;
 int V4L2_PIX_FMT_SBGGR16 ;
 int V4L2_PIX_FMT_SBGGR8 ;
 int V4L2_PIX_FMT_UYVY ;
 int V4L2_PIX_FMT_YUYV ;
 scalar_t__ VPFE_RAW_BAYER ;
 TYPE_3__ ccdc_hw_params_raw ;
 TYPE_2__ ccdc_hw_params_ycbcr ;
 scalar_t__ ccdc_if_type ;

__attribute__((used)) static u32 ccdc_get_pixel_format(void)
{
 struct ccdc_a_law *alaw =
  &ccdc_hw_params_raw.config_params.alaw;
 u32 pixfmt;

 if (ccdc_if_type == VPFE_RAW_BAYER)
  if (alaw->enable)
   pixfmt = V4L2_PIX_FMT_SBGGR8;
  else
   pixfmt = V4L2_PIX_FMT_SBGGR16;
 else {
  if (ccdc_hw_params_ycbcr.pix_order == CCDC_PIXORDER_YCBYCR)
   pixfmt = V4L2_PIX_FMT_YUYV;
  else
   pixfmt = V4L2_PIX_FMT_UYVY;
 }
 return pixfmt;
}
