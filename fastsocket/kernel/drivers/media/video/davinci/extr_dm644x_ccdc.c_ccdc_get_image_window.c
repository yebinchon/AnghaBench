
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_rect {int dummy; } ;
struct TYPE_4__ {struct v4l2_rect win; } ;
struct TYPE_3__ {struct v4l2_rect win; } ;


 scalar_t__ VPFE_RAW_BAYER ;
 TYPE_2__ ccdc_hw_params_raw ;
 TYPE_1__ ccdc_hw_params_ycbcr ;
 scalar_t__ ccdc_if_type ;

__attribute__((used)) static void ccdc_get_image_window(struct v4l2_rect *win)
{
 if (ccdc_if_type == VPFE_RAW_BAYER)
  *win = ccdc_hw_params_raw.win;
 else
  *win = ccdc_hw_params_ycbcr.win;
}
