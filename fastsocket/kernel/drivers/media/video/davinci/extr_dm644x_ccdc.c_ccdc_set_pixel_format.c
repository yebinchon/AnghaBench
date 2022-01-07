
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int enable; } ;
struct TYPE_6__ {TYPE_1__ alaw; } ;
struct TYPE_8__ {TYPE_2__ config_params; int pix_fmt; } ;
struct TYPE_7__ {int pix_order; } ;


 int CCDC_PIXFMT_RAW ;
 int CCDC_PIXORDER_CBYCRY ;
 int CCDC_PIXORDER_YCBYCR ;
 int EINVAL ;
 scalar_t__ V4L2_PIX_FMT_SBGGR16 ;
 scalar_t__ V4L2_PIX_FMT_SBGGR8 ;
 scalar_t__ V4L2_PIX_FMT_UYVY ;
 scalar_t__ V4L2_PIX_FMT_YUYV ;
 scalar_t__ VPFE_RAW_BAYER ;
 TYPE_4__ ccdc_hw_params_raw ;
 TYPE_3__ ccdc_hw_params_ycbcr ;
 scalar_t__ ccdc_if_type ;

__attribute__((used)) static int ccdc_set_pixel_format(u32 pixfmt)
{
 if (ccdc_if_type == VPFE_RAW_BAYER) {
  ccdc_hw_params_raw.pix_fmt = CCDC_PIXFMT_RAW;
  if (pixfmt == V4L2_PIX_FMT_SBGGR8)
   ccdc_hw_params_raw.config_params.alaw.enable = 1;
  else if (pixfmt != V4L2_PIX_FMT_SBGGR16)
   return -EINVAL;
 } else {
  if (pixfmt == V4L2_PIX_FMT_YUYV)
   ccdc_hw_params_ycbcr.pix_order = CCDC_PIXORDER_YCBYCR;
  else if (pixfmt == V4L2_PIX_FMT_UYVY)
   ccdc_hw_params_ycbcr.pix_order = CCDC_PIXORDER_CBYCRY;
  else
   return -EINVAL;
 }
 return 0;
}
