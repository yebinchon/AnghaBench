
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vc ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int vsync_field; } ;
struct video_event {int flags; int type; TYPE_2__ u; int cmd; } ;
struct video_command {int flags; int type; TYPE_2__ u; int cmd; } ;
struct ivtv_stream {int dma_pts; int type; } ;
struct ivtv_open_id {size_t type; int yuv_frames; struct ivtv* itv; } ;
struct ivtv_dma_frame {int * y_source; int type; } ;
struct TYPE_3__ {int lace_mode; } ;
struct ivtv {int v4l2_cap; int* last_dec_timing; unsigned long speed_mute_audio; unsigned long audio_stereo_mode; unsigned long audio_bilingual_mode; int serialize_lock; int event_waitq; int i_flags; TYPE_1__ yuv_info; int output_mode; int decoding; struct ivtv_stream* streams; } ;
struct file {int f_flags; int private_data; } ;





 unsigned long AUDIO_STEREO_SWAPPED ;
 int CX2341X_DEC_GET_TIMING_INFO ;
 int CX2341X_DEC_SET_AUDIO_MODE ;
 int CX2341X_MBOX_MAX_DATA ;
 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int EBUSY ;
 int EINTR ;
 int EINVAL ;
 int EIO ;
 int IVTV_DEBUG_INFO (char*) ;
 int IVTV_DEBUG_IOCTL (char*,...) ;
 int IVTV_DEBUG_WARN (char*) ;
 int IVTV_DEC_STREAM_TYPE_MPG ;
 int IVTV_F_I_EV_DEC_STOPPED ;
 int IVTV_F_I_EV_VSYNC ;
 int IVTV_F_I_EV_VSYNC_ENABLED ;
 int IVTV_F_I_EV_VSYNC_FIELD ;
 int IVTV_F_I_VALID_DEC_TIMINGS ;

 int IVTV_YUV_MODE_MASK ;
 int IVTV_YUV_MODE_PROGRESSIVE ;
 int OUT_UDMA_YUV ;
 int O_NONBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int VIDEO_CMD_CONTINUE ;
 int VIDEO_CMD_FREEZE ;
 int VIDEO_CMD_PLAY ;
 int VIDEO_CMD_STOP ;
 int VIDEO_CMD_STOP_IMMEDIATELY ;
 int VIDEO_CMD_STOP_TO_BLACK ;


 int VIDEO_EVENT_DECODER_STOPPED ;
 int VIDEO_EVENT_VSYNC ;






 unsigned long VIDEO_SOURCE_DEMUX ;


 int VIDEO_VSYNC_FIELD_EVEN ;
 int VIDEO_VSYNC_FIELD_ODD ;
 int VIDEO_VSYNC_FIELD_PROGRESSIVE ;
 int atomic_read (int *) ;
 int current ;
 struct ivtv_open_id* fh2id (int ) ;
 int finish_wait (int *,int *) ;
 int ivtv_api (struct ivtv*,int ,int,int*) ;
 int ivtv_passthrough_mode (struct ivtv*,int) ;
 int ivtv_release_stream (struct ivtv_stream*) ;
 int ivtv_set_output_mode (struct ivtv*,int ) ;
 int ivtv_start_decoding (struct ivtv_open_id*,size_t) ;
 int ivtv_vapi (struct ivtv*,int ,int,unsigned long,unsigned long) ;
 int ivtv_video_command (struct ivtv*,struct ivtv_open_id*,struct video_event*,int) ;
 int ivtv_yuv_prep_frame (struct ivtv*,struct ivtv_dma_frame*) ;
 int memcpy (int*,int*,int) ;
 int memset (struct video_event*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 int signal_pending (int ) ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wait ;

__attribute__((used)) static int ivtv_decoder_ioctls(struct file *filp, unsigned int cmd, void *arg)
{
 struct ivtv_open_id *id = fh2id(filp->private_data);
 struct ivtv *itv = id->itv;
 int nonblocking = filp->f_flags & O_NONBLOCK;
 struct ivtv_stream *s = &itv->streams[id->type];
 unsigned long iarg = (unsigned long)arg;

 switch (cmd) {
 case 138: {
  struct ivtv_dma_frame *args = arg;

  IVTV_DEBUG_IOCTL("IVTV_IOC_DMA_FRAME\n");
  if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
   return -EINVAL;
  if (args->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  if (itv->output_mode == OUT_UDMA_YUV && args->y_source == ((void*)0))
   return 0;
  if (ivtv_start_decoding(id, id->type)) {
   return -EBUSY;
  }
  if (ivtv_set_output_mode(itv, OUT_UDMA_YUV) != OUT_UDMA_YUV) {
   ivtv_release_stream(s);
   return -EBUSY;
  }

  id->yuv_frames = 1;
  if (args->y_source == ((void*)0))
   return 0;
  return ivtv_yuv_prep_frame(itv, args);
 }

 case 132: {
  u32 data[CX2341X_MBOX_MAX_DATA];
  u64 *pts = arg;

  IVTV_DEBUG_IOCTL("VIDEO_GET_PTS\n");
  if (s->type < IVTV_DEC_STREAM_TYPE_MPG) {
   *pts = s->dma_pts;
   break;
  }
  if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
   return -EINVAL;

  if (test_bit(IVTV_F_I_VALID_DEC_TIMINGS, &itv->i_flags)) {
   *pts = (u64) ((u64)itv->last_dec_timing[2] << 32) |
     (u64)itv->last_dec_timing[1];
   break;
  }
  *pts = 0;
  if (atomic_read(&itv->decoding)) {
   if (ivtv_api(itv, CX2341X_DEC_GET_TIMING_INFO, 5, data)) {
    IVTV_DEBUG_WARN("GET_TIMING: couldn't read clock\n");
    return -EIO;
   }
   memcpy(itv->last_dec_timing, data, sizeof(itv->last_dec_timing));
   set_bit(IVTV_F_I_VALID_DEC_TIMINGS, &itv->i_flags);
   *pts = (u64) ((u64) data[2] << 32) | (u64) data[1];

  }
  break;
 }

 case 133: {
  u32 data[CX2341X_MBOX_MAX_DATA];
  u64 *frame = arg;

  IVTV_DEBUG_IOCTL("VIDEO_GET_FRAME_COUNT\n");
  if (s->type < IVTV_DEC_STREAM_TYPE_MPG) {
   *frame = 0;
   break;
  }
  if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
   return -EINVAL;

  if (test_bit(IVTV_F_I_VALID_DEC_TIMINGS, &itv->i_flags)) {
   *frame = itv->last_dec_timing[0];
   break;
  }
  *frame = 0;
  if (atomic_read(&itv->decoding)) {
   if (ivtv_api(itv, CX2341X_DEC_GET_TIMING_INFO, 5, data)) {
    IVTV_DEBUG_WARN("GET_TIMING: couldn't read clock\n");
    return -EIO;
   }
   memcpy(itv->last_dec_timing, data, sizeof(itv->last_dec_timing));
   set_bit(IVTV_F_I_VALID_DEC_TIMINGS, &itv->i_flags);
   *frame = data[0];
  }
  break;
 }

 case 131: {
  struct video_command vc;

  IVTV_DEBUG_IOCTL("VIDEO_PLAY\n");
  memset(&vc, 0, sizeof(vc));
  vc.cmd = VIDEO_CMD_PLAY;
  return ivtv_video_command(itv, id, &vc, 0);
 }

 case 129: {
  struct video_command vc;

  IVTV_DEBUG_IOCTL("VIDEO_STOP\n");
  memset(&vc, 0, sizeof(vc));
  vc.cmd = VIDEO_CMD_STOP;
  vc.flags = VIDEO_CMD_STOP_TO_BLACK | VIDEO_CMD_STOP_IMMEDIATELY;
  return ivtv_video_command(itv, id, &vc, 0);
 }

 case 135: {
  struct video_command vc;

  IVTV_DEBUG_IOCTL("VIDEO_FREEZE\n");
  memset(&vc, 0, sizeof(vc));
  vc.cmd = VIDEO_CMD_FREEZE;
  return ivtv_video_command(itv, id, &vc, 0);
 }

 case 136: {
  struct video_command vc;

  IVTV_DEBUG_IOCTL("VIDEO_CONTINUE\n");
  memset(&vc, 0, sizeof(vc));
  vc.cmd = VIDEO_CMD_CONTINUE;
  return ivtv_video_command(itv, id, &vc, 0);
 }

 case 137:
 case 128: {
  struct video_command *vc = arg;
  int try = (cmd == 128);

  if (try)
   IVTV_DEBUG_IOCTL("VIDEO_TRY_COMMAND %d\n", vc->cmd);
  else
   IVTV_DEBUG_IOCTL("VIDEO_COMMAND %d\n", vc->cmd);
  return ivtv_video_command(itv, id, vc, try);
 }

 case 134: {
  struct video_event *ev = arg;
  DEFINE_WAIT(wait);

  IVTV_DEBUG_IOCTL("VIDEO_GET_EVENT\n");
  if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
   return -EINVAL;
  memset(ev, 0, sizeof(*ev));
  set_bit(IVTV_F_I_EV_VSYNC_ENABLED, &itv->i_flags);

  while (1) {
   if (test_and_clear_bit(IVTV_F_I_EV_DEC_STOPPED, &itv->i_flags))
    ev->type = VIDEO_EVENT_DECODER_STOPPED;
   else if (test_and_clear_bit(IVTV_F_I_EV_VSYNC, &itv->i_flags)) {
    ev->type = VIDEO_EVENT_VSYNC;
    ev->u.vsync_field = test_bit(IVTV_F_I_EV_VSYNC_FIELD, &itv->i_flags) ?
     VIDEO_VSYNC_FIELD_ODD : VIDEO_VSYNC_FIELD_EVEN;
    if (itv->output_mode == OUT_UDMA_YUV &&
     (itv->yuv_info.lace_mode & IVTV_YUV_MODE_MASK) ==
        IVTV_YUV_MODE_PROGRESSIVE) {
     ev->u.vsync_field = VIDEO_VSYNC_FIELD_PROGRESSIVE;
    }
   }
   if (ev->type)
    return 0;
   if (nonblocking)
    return -EAGAIN;



   mutex_unlock(&itv->serialize_lock);
   prepare_to_wait(&itv->event_waitq, &wait, TASK_INTERRUPTIBLE);
   if (!test_bit(IVTV_F_I_EV_DEC_STOPPED, &itv->i_flags) &&
       !test_bit(IVTV_F_I_EV_VSYNC, &itv->i_flags))
    schedule();
   finish_wait(&itv->event_waitq, &wait);
   mutex_lock(&itv->serialize_lock);
   if (signal_pending(current)) {

    IVTV_DEBUG_INFO("User stopped wait for event\n");
    return -EINTR;
   }
  }
  break;
 }

 case 130:
  IVTV_DEBUG_IOCTL("VIDEO_SELECT_SOURCE\n");
  if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
   return -EINVAL;
  return ivtv_passthrough_mode(itv, iarg == VIDEO_SOURCE_DEMUX);

 case 139:
  IVTV_DEBUG_IOCTL("AUDIO_SET_MUTE\n");
  itv->speed_mute_audio = iarg;
  return 0;

 case 140:
  IVTV_DEBUG_IOCTL("AUDIO_CHANNEL_SELECT\n");
  if (iarg > AUDIO_STEREO_SWAPPED)
   return -EINVAL;
  itv->audio_stereo_mode = iarg;
  ivtv_vapi(itv, CX2341X_DEC_SET_AUDIO_MODE, 2, itv->audio_bilingual_mode, itv->audio_stereo_mode);
  return 0;

 case 141:
  IVTV_DEBUG_IOCTL("AUDIO_BILINGUAL_CHANNEL_SELECT\n");
  if (iarg > AUDIO_STEREO_SWAPPED)
   return -EINVAL;
  itv->audio_bilingual_mode = iarg;
  ivtv_vapi(itv, CX2341X_DEC_SET_AUDIO_MODE, 2, itv->audio_bilingual_mode, itv->audio_stereo_mode);
  return 0;

 default:
  return -EINVAL;
 }
 return 0;
}
