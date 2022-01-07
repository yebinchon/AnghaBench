
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct TYPE_5__ {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct yuv_playback_info {int osd_full_w; int osd_full_h; TYPE_2__ main_rect; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_4__ {int count; int* start; int sliced_decoder_line_size; } ;
struct ivtv {int std; int is_60hz; int is_50hz; int hw_flags; int v4l2_cap; int std_out; int is_out_60hz; int is_out_50hz; int osd_info; TYPE_2__ main_rect; TYPE_3__ cxhdl; int vsync_waitq; TYPE_1__ vbi; int decoding; int capturing; int i_flags; struct yuv_playback_info yuv_info; } ;
struct file {int dummy; } ;


 int CX2341X_DEC_SET_STANDARD ;
 int CX2341X_OSD_SET_FRAMEBUFFER_WINDOW ;
 int DEFINE_WAIT (int ) ;
 int EBUSY ;
 int EINVAL ;
 int IVTV_DEBUG_INFO (char*,unsigned long long) ;
 int IVTV_F_I_RADIO_USER ;
 int IVTV_HW_CX25840 ;
 int IVTV_REG_DEC_LINE_FIELD ;
 int IVTV_WARN (char*) ;
 int TASK_UNINTERRUPTIBLE ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_ALL ;
 scalar_t__ atomic_read (int *) ;
 int core ;
 int cx2341x_handler_set_50hz (TYPE_3__*,int) ;
 int finish_wait (int *,int *) ;
 int ivtv_call_all (struct ivtv*,int ,int ,int) ;
 int ivtv_vapi (struct ivtv*,int ,int,int,...) ;
 int msecs_to_jiffies (int) ;
 int prepare_to_wait (int *,int *,int ) ;
 int read_reg (int ) ;
 int s_std ;
 int s_std_output ;
 int schedule_timeout (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int video ;
 int wait ;

int ivtv_s_std(struct file *file, void *fh, v4l2_std_id *std)
{
 DEFINE_WAIT(wait);
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;
 struct yuv_playback_info *yi = &itv->yuv_info;
 int f;

 if ((*std & V4L2_STD_ALL) == 0)
  return -EINVAL;

 if (*std == itv->std)
  return 0;

 if (test_bit(IVTV_F_I_RADIO_USER, &itv->i_flags) ||
     atomic_read(&itv->capturing) > 0 ||
     atomic_read(&itv->decoding) > 0) {



  return -EBUSY;
 }

 itv->std = *std;
 itv->is_60hz = (*std & V4L2_STD_525_60) ? 1 : 0;
 itv->is_50hz = !itv->is_60hz;
 cx2341x_handler_set_50hz(&itv->cxhdl, itv->is_50hz);
 itv->cxhdl.width = 720;
 itv->cxhdl.height = itv->is_50hz ? 576 : 480;
 itv->vbi.count = itv->is_50hz ? 18 : 12;
 itv->vbi.start[0] = itv->is_50hz ? 6 : 10;
 itv->vbi.start[1] = itv->is_50hz ? 318 : 273;

 if (itv->hw_flags & IVTV_HW_CX25840)
  itv->vbi.sliced_decoder_line_size = itv->is_60hz ? 272 : 284;

 IVTV_DEBUG_INFO("Switching standard to %llx.\n", (unsigned long long)itv->std);


 ivtv_call_all(itv, core, s_std, itv->std);

 if (itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT) {

  itv->std_out = *std;
  itv->is_out_60hz = itv->is_60hz;
  itv->is_out_50hz = itv->is_50hz;
  ivtv_call_all(itv, video, s_std_output, itv->std_out);







  for (f = 0; f < 4; f++) {
   prepare_to_wait(&itv->vsync_waitq, &wait,
     TASK_UNINTERRUPTIBLE);
   if ((read_reg(IVTV_REG_DEC_LINE_FIELD) >> 16) < 100)
    break;
   schedule_timeout(msecs_to_jiffies(25));
  }
  finish_wait(&itv->vsync_waitq, &wait);

  if (f == 4)
   IVTV_WARN("Mode change failed to sync to decoder\n");

  ivtv_vapi(itv, CX2341X_DEC_SET_STANDARD, 1, itv->is_out_50hz);
  itv->main_rect.left = itv->main_rect.top = 0;
  itv->main_rect.width = 720;
  itv->main_rect.height = itv->cxhdl.height;
  ivtv_vapi(itv, CX2341X_OSD_SET_FRAMEBUFFER_WINDOW, 4,
   720, itv->main_rect.height, 0, 0);
  yi->main_rect = itv->main_rect;
  if (!itv->osd_info) {
   yi->osd_full_w = 720;
   yi->osd_full_h = itv->is_out_50hz ? 576 : 480;
  }
 }
 return 0;
}
