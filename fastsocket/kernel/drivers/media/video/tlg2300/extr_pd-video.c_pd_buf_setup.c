
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {struct front_face* priv_data; } ;
struct v4l2_pix_format {int height; int width; int sizeimage; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct video_data {int endpoint_addr; int lines_per_field; int lines_size; struct front_face* front; struct poseidon* pd; struct vbi_data* vbi; TYPE_1__ context; } ;
struct vbi_data {int vbi_size; struct video_data* video; } ;
struct poseidon {struct vbi_data vbi_data; struct video_data video_data; } ;
struct front_face {int type; struct poseidon* pd; } ;


 int EINVAL ;
 unsigned int PAGE_ALIGN (int ) ;


 int log (char*,unsigned int) ;
 int start_video_stream (struct poseidon*) ;

__attribute__((used)) static int pd_buf_setup(struct videobuf_queue *q, unsigned int *count,
         unsigned int *size)
{
 struct front_face *front = q->priv_data;
 struct poseidon *pd = front->pd;

 switch (front->type) {
 default:
  return -EINVAL;
 case 128: {
  struct video_data *video = &pd->video_data;
  struct v4l2_pix_format *pix = &video->context.pix;

  *size = PAGE_ALIGN(pix->sizeimage);
  if (*count < 4)
   *count = 4;
  if (1) {

   video->endpoint_addr = 0x82;
   video->vbi = &pd->vbi_data;
   video->vbi->video = video;
   video->pd = pd;
   video->lines_per_field = pix->height / 2;
   video->lines_size = pix->width * 2;
   video->front = front;
  }
  return start_video_stream(pd);
 }

 case 129: {
  struct vbi_data *vbi = &pd->vbi_data;

  *size = PAGE_ALIGN(vbi->vbi_size);
  log("size : %d", *size);
  if (*count == 0)
   *count = 4;
 }
  break;
 }
 return 0;
}
