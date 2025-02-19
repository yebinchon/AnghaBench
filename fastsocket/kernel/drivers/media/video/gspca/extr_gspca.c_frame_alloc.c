
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int offset; } ;
struct TYPE_8__ {int index; unsigned int length; int memory; TYPE_3__ m; scalar_t__ sequence; int field; scalar_t__ flags; int type; } ;
struct gspca_frame {TYPE_4__ v4l2_buf; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {int curr_mode; int memory; unsigned int frsz; unsigned int nframes; scalar_t__ fr_o; int fr_i; int fr_q; int frbuf; struct gspca_frame* frame; struct file* capt_file; TYPE_2__ cam; } ;
struct file {int dummy; } ;
typedef enum v4l2_memory { ____Placeholder_v4l2_memory } v4l2_memory ;
struct TYPE_5__ {unsigned int sizeimage; } ;


 int D_STREAM ;
 int ENOMEM ;
 unsigned int GSPCA_MAX_FRAMES ;
 unsigned int PAGE_ALIGN (unsigned int) ;
 int PDEBUG (int ,char*,unsigned int) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_NONE ;
 int atomic_set (int *,int ) ;
 int err (char*) ;
 int vmalloc_32 (unsigned int) ;

__attribute__((used)) static int frame_alloc(struct gspca_dev *gspca_dev, struct file *file,
   enum v4l2_memory memory, unsigned int count)
{
 struct gspca_frame *frame;
 unsigned int frsz;
 int i;

 i = gspca_dev->curr_mode;
 frsz = gspca_dev->cam.cam_mode[i].sizeimage;
 PDEBUG(D_STREAM, "frame alloc frsz: %d", frsz);
 frsz = PAGE_ALIGN(frsz);
 if (count >= GSPCA_MAX_FRAMES)
  count = GSPCA_MAX_FRAMES - 1;
 gspca_dev->frbuf = vmalloc_32(frsz * count);
 if (!gspca_dev->frbuf) {
  err("frame alloc failed");
  return -ENOMEM;
 }
 gspca_dev->capt_file = file;
 gspca_dev->memory = memory;
 gspca_dev->frsz = frsz;
 gspca_dev->nframes = count;
 for (i = 0; i < count; i++) {
  frame = &gspca_dev->frame[i];
  frame->v4l2_buf.index = i;
  frame->v4l2_buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  frame->v4l2_buf.flags = 0;
  frame->v4l2_buf.field = V4L2_FIELD_NONE;
  frame->v4l2_buf.length = frsz;
  frame->v4l2_buf.memory = memory;
  frame->v4l2_buf.sequence = 0;
  frame->data = gspca_dev->frbuf + i * frsz;
  frame->v4l2_buf.m.offset = i * frsz;
 }
 atomic_set(&gspca_dev->fr_q, 0);
 atomic_set(&gspca_dev->fr_i, 0);
 gspca_dev->fr_o = 0;
 return 0;
}
