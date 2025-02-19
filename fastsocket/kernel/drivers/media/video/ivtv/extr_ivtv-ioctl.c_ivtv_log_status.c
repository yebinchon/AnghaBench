
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_output {char* name; } ;
struct v4l2_input {char* name; } ;
struct v4l2_audioout {int name; } ;
struct v4l2_audio {int name; } ;
struct tveeprom {int dummy; } ;
struct TYPE_6__ {int buffers; } ;
struct ivtv_stream {int buffers; int buf_size; TYPE_3__ q_free; int s_flags; int name; int * vdev; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int hdl; } ;
struct ivtv {int v4l2_cap; char* instance; int hw_flags; int dualwatch_stereo_mode; int output_mode; size_t audio_stereo_mode; size_t audio_bilingual_mode; char* i_flags; scalar_t__ vbi_data_inserted; scalar_t__ mpg_data_received; struct ivtv_stream* streams; TYPE_2__ v4l2_dev; TYPE_1__ cxhdl; int active_output; int audio_input; int active_input; int card_name; } ;
struct file {int dummy; } ;


 int CX2341X_MBOX_MAX_DATA ;
 int CX2341X_OSD_GET_STATE ;
 int IVTV_F_I_RADIO_USER ;
 int IVTV_HW_TVEEPROM ;
 int IVTV_INFO (char*,...) ;
 int IVTV_MAX_STREAMS ;
 int IVTV_VERSION ;
 int OUT_NONE ;
 int OUT_PASSTHROUGH ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int core ;
 int ivtv_call_all (struct ivtv*,int ,int ) ;
 int ivtv_get_audio_input (struct ivtv*,int ,struct v4l2_audio*) ;
 int ivtv_get_audio_output (struct ivtv*,int ,struct v4l2_audioout*) ;
 int ivtv_get_input (struct ivtv*,int ,struct v4l2_input*) ;
 int ivtv_get_output (struct ivtv*,int ,struct v4l2_output*) ;
 int ivtv_read_eeprom (struct ivtv*,struct tveeprom*) ;
 int ivtv_vapi_result (struct ivtv*,int*,int ,int ) ;
 int log_status ;
 int read_reg (int) ;
 scalar_t__ test_bit (int ,char**) ;
 int v4l2_ctrl_handler_log_status (int *,int ) ;

__attribute__((used)) static int ivtv_log_status(struct file *file, void *fh)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;
 u32 data[CX2341X_MBOX_MAX_DATA];

 int has_output = itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT;
 struct v4l2_input vidin;
 struct v4l2_audio audin;
 int i;

 IVTV_INFO("=================  START STATUS CARD #%d  =================\n",
         itv->instance);
 IVTV_INFO("Version: %s Card: %s\n", IVTV_VERSION, itv->card_name);
 if (itv->hw_flags & IVTV_HW_TVEEPROM) {
  struct tveeprom tv;

  ivtv_read_eeprom(itv, &tv);
 }
 ivtv_call_all(itv, core, log_status);
 ivtv_get_input(itv, itv->active_input, &vidin);
 ivtv_get_audio_input(itv, itv->audio_input, &audin);
 IVTV_INFO("Video Input:  %s\n", vidin.name);
 IVTV_INFO("Audio Input:  %s%s\n", audin.name,
  (itv->dualwatch_stereo_mode & ~0x300) == 0x200 ? " (Bilingual)" : "");
 if (has_output) {
  struct v4l2_output vidout;
  struct v4l2_audioout audout;
  int mode = itv->output_mode;
  static const char * const output_modes[5] = {
   "None",
   "MPEG Streaming",
   "YUV Streaming",
   "YUV Frames",
   "Passthrough",
  };
  static const char * const audio_modes[5] = {
   "Stereo",
   "Left",
   "Right",
   "Mono",
   "Swapped"
  };
  static const char * const alpha_mode[4] = {
   "None",
   "Global",
   "Local",
   "Global and Local"
  };
  static const char * const pixel_format[16] = {
   "ARGB Indexed",
   "RGB 5:6:5",
   "ARGB 1:5:5:5",
   "ARGB 1:4:4:4",
   "ARGB 8:8:8:8",
   "5",
   "6",
   "7",
   "AYUV Indexed",
   "YUV 5:6:5",
   "AYUV 1:5:5:5",
   "AYUV 1:4:4:4",
   "AYUV 8:8:8:8",
   "13",
   "14",
   "15",
  };

  ivtv_get_output(itv, itv->active_output, &vidout);
  ivtv_get_audio_output(itv, 0, &audout);
  IVTV_INFO("Video Output: %s\n", vidout.name);
  IVTV_INFO("Audio Output: %s (Stereo/Bilingual: %s/%s)\n", audout.name,
   audio_modes[itv->audio_stereo_mode],
   audio_modes[itv->audio_bilingual_mode]);
  if (mode < 0 || mode > OUT_PASSTHROUGH)
   mode = OUT_NONE;
  IVTV_INFO("Output Mode:  %s\n", output_modes[mode]);
  ivtv_vapi_result(itv, data, CX2341X_OSD_GET_STATE, 0);
  data[0] |= (read_reg(0x2a00) >> 7) & 0x40;
  IVTV_INFO("Overlay:      %s, Alpha: %s, Pixel Format: %s\n",
   data[0] & 1 ? "On" : "Off",
   alpha_mode[(data[0] >> 1) & 0x3],
   pixel_format[(data[0] >> 3) & 0xf]);
 }
 IVTV_INFO("Tuner:  %s\n",
  test_bit(IVTV_F_I_RADIO_USER, &itv->i_flags) ? "Radio" : "TV");
 v4l2_ctrl_handler_log_status(&itv->cxhdl.hdl, itv->v4l2_dev.name);
 IVTV_INFO("Status flags:    0x%08lx\n", itv->i_flags);
 for (i = 0; i < IVTV_MAX_STREAMS; i++) {
  struct ivtv_stream *s = &itv->streams[i];

  if (s->vdev == ((void*)0) || s->buffers == 0)
   continue;
  IVTV_INFO("Stream %s: status 0x%04lx, %d%% of %d KiB (%d buffers) in use\n", s->name, s->s_flags,
    (s->buffers - s->q_free.buffers) * 100 / s->buffers,
    (s->buffers * s->buf_size) / 1024, s->buffers);
 }

 IVTV_INFO("Read MPG/VBI: %lld/%lld bytes\n",
   (long long)itv->mpg_data_received,
   (long long)itv->vbi_data_inserted);
 IVTV_INFO("==================  END STATUS CARD #%d  ==================\n",
   itv->instance);

 return 0;
}
