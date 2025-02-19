
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int x; int y; } ;
struct TYPE_5__ {int x; int y; int size; } ;
struct TYPE_4__ {int x; int y; int size; } ;
struct pwc_device {int image_mask; int vcinterface; int vendpoint; TYPE_3__ abs_max; int len_per_image; TYPE_2__ view_max; TYPE_1__ view_min; int pixfmt; scalar_t__ frame_trailer_size; scalar_t__ frame_header_size; int type; } ;


 scalar_t__ DEVICE_USE_CODEC1 (int ) ;
 scalar_t__ DEVICE_USE_CODEC3 (int ) ;
 int PAGE_ALIGN (int) ;
 int PSZ_CIF ;
 int PSZ_QCIF ;
 int PSZ_QSIF ;
 int PSZ_SIF ;
 int PSZ_SQCIF ;
 int PSZ_VGA ;
 scalar_t__ TOUCAM_HEADER_SIZE ;
 scalar_t__ TOUCAM_TRAILER_SIZE ;
 int V4L2_PIX_FMT_YUV420 ;

void pwc_construct(struct pwc_device *pdev)
{
 if (DEVICE_USE_CODEC1(pdev->type)) {

  pdev->view_min.x = 128;
  pdev->view_min.y = 96;
  pdev->view_max.x = 352;
  pdev->view_max.y = 288;
  pdev->abs_max.x = 352;
  pdev->abs_max.y = 288;
  pdev->image_mask = 1 << PSZ_SQCIF | 1 << PSZ_QCIF | 1 << PSZ_CIF;
  pdev->vcinterface = 2;
  pdev->vendpoint = 4;
  pdev->frame_header_size = 0;
  pdev->frame_trailer_size = 0;

 } else if (DEVICE_USE_CODEC3(pdev->type)) {

  pdev->view_min.x = 160;
  pdev->view_min.y = 120;
  pdev->view_max.x = 640;
  pdev->view_max.y = 480;
  pdev->image_mask = 1 << PSZ_QSIF | 1 << PSZ_SIF | 1 << PSZ_VGA;
  pdev->abs_max.x = 640;
  pdev->abs_max.y = 480;
  pdev->vcinterface = 3;
  pdev->vendpoint = 5;
  pdev->frame_header_size = TOUCAM_HEADER_SIZE;
  pdev->frame_trailer_size = TOUCAM_TRAILER_SIZE;

 } else {

  pdev->view_min.x = 128;
  pdev->view_min.y = 96;

  pdev->view_max.x = 640;
  pdev->view_max.y = 480;
  pdev->image_mask = 1 << PSZ_SQCIF | 1 << PSZ_QSIF | 1 << PSZ_QCIF | 1 << PSZ_SIF | 1 << PSZ_CIF | 1 << PSZ_VGA;
  pdev->abs_max.x = 640;
  pdev->abs_max.y = 480;
  pdev->vcinterface = 3;
  pdev->vendpoint = 4;
  pdev->frame_header_size = 0;
  pdev->frame_trailer_size = 0;
 }
 pdev->pixfmt = V4L2_PIX_FMT_YUV420;
 pdev->view_min.size = pdev->view_min.x * pdev->view_min.y;
 pdev->view_max.size = pdev->view_max.x * pdev->view_max.y;

 pdev->len_per_image = PAGE_ALIGN((pdev->abs_max.x * pdev->abs_max.y * 3) / 2);
}
