
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; } ;
struct pwc_device {scalar_t__ frame_trailer_size; scalar_t__ frame_header_size; scalar_t__ frame_size; scalar_t__ frame_total_size; TYPE_1__ view; int type; int pixfmt; } ;
struct TYPE_4__ {int y; int x; } ;


 scalar_t__ DEVICE_USE_CODEC1 (int ) ;
 scalar_t__ DEVICE_USE_CODEC3 (int ) ;
 int ERANGE ;
 int PWC_DEBUG_FLOW (char*,int,int,int,int ) ;
 int PWC_DEBUG_MODULE (char*) ;
 int PWC_DEBUG_SIZE (char*,int,int,int ,int ) ;
 int PWC_ERROR (char*,int ,int,int) ;
 int PWC_TRACE (char*,int) ;
 int pwc_decode_size (struct pwc_device*,int,int) ;
 TYPE_2__* pwc_image_sizes ;
 int pwc_set_image_buffer_size (struct pwc_device*) ;
 int set_video_mode_Kiara (struct pwc_device*,int,int,int,int) ;
 int set_video_mode_Nala (struct pwc_device*,int,int) ;
 int set_video_mode_Timon (struct pwc_device*,int,int,int,int) ;
 int * size2name ;

int pwc_set_video_mode(struct pwc_device *pdev, int width, int height, int frames, int compression, int snapshot)
{
 int ret, size;

 PWC_DEBUG_FLOW("set_video_mode(%dx%d @ %d, pixfmt %08x).\n", width, height, frames, pdev->pixfmt);
 size = pwc_decode_size(pdev, width, height);
 if (size < 0) {
  PWC_DEBUG_MODULE("Could not find suitable size.\n");
  return -ERANGE;
 }
 PWC_TRACE("decode_size = %d.\n", size);

 if (DEVICE_USE_CODEC1(pdev->type)) {
  ret = set_video_mode_Nala(pdev, size, frames);

 } else if (DEVICE_USE_CODEC3(pdev->type)) {
  ret = set_video_mode_Kiara(pdev, size, frames, compression, snapshot);

 } else {
  ret = set_video_mode_Timon(pdev, size, frames, compression, snapshot);
 }
 if (ret < 0) {
  PWC_ERROR("Failed to set video mode %s@%d fps; return code = %d\n", size2name[size], frames, ret);
  return ret;
 }
 pdev->view.x = width;
 pdev->view.y = height;
 pdev->frame_total_size = pdev->frame_size + pdev->frame_header_size + pdev->frame_trailer_size;
 pwc_set_image_buffer_size(pdev);
 PWC_DEBUG_SIZE("Set viewport to %dx%d, image size is %dx%d.\n", width, height, pwc_image_sizes[size].x, pwc_image_sizes[size].y);
 return 0;
}
