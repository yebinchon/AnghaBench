
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int x; int y; } ;
struct TYPE_4__ {int x; int y; } ;
struct pwc_device {scalar_t__ pixfmt; int image_mask; TYPE_2__ view_max; TYPE_1__ abs_max; } ;
struct TYPE_6__ {int x; int y; } ;


 int PSZ_MAX ;
 int PWC_DEBUG_SIZE (char*) ;
 scalar_t__ V4L2_PIX_FMT_YUV420 ;
 TYPE_3__* pwc_image_sizes ;

int pwc_decode_size(struct pwc_device *pdev, int width, int height)
{
 int i, find;






 if (pdev->pixfmt != V4L2_PIX_FMT_YUV420)
 {
  if (width > pdev->abs_max.x || height > pdev->abs_max.y)
  {
   PWC_DEBUG_SIZE("VIDEO_PALETTE_RAW: going beyond abs_max.\n");
   return -1;
  }
 }
 else
 {
  if (width > pdev->view_max.x || height > pdev->view_max.y)
  {
   PWC_DEBUG_SIZE("VIDEO_PALETTE_not RAW: going beyond view_max.\n");
   return -1;
  }
 }




 find = -1;
 for (i = 0; i < PSZ_MAX; i++) {
  if (pdev->image_mask & (1 << i)) {
   if (pwc_image_sizes[i].x <= width && pwc_image_sizes[i].y <= height)
    find = i;
  }
 }
 return find;
}
