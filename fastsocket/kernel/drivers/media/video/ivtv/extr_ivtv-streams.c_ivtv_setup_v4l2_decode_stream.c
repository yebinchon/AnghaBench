
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ivtv_stream {int type; int * vdev; struct ivtv* itv; } ;
struct TYPE_4__ {int width; int height; int audio_properties; } ;
struct TYPE_3__ {int dec_start; } ;
struct ivtv {TYPE_2__ cxhdl; int is_out_50hz; int output_mode; TYPE_1__ vbi; int audio_stereo_mode; int audio_bilingual_mode; } ;


 int CX2341X_DEC_EXTRACT_VBI ;
 int CX2341X_DEC_SET_AUDIO_MODE ;
 int CX2341X_DEC_SET_DECODER_SOURCE ;
 int CX2341X_DEC_SET_DISPLAY_BUFFERS ;
 int CX2341X_DEC_SET_PREBUFFERING ;
 int CX2341X_MBOX_MAX_DATA ;
 int EINVAL ;
 int IVTV_DEBUG_INFO (char*,...) ;
 int IVTV_DEBUG_WARN (char*) ;


 int OUT_PASSTHROUGH ;
 int ivtv_firmware_check (struct ivtv*,char*) ;
 int ivtv_msleep_timeout (int,int ) ;
 scalar_t__ ivtv_vapi (struct ivtv*,int ,int,int,...) ;
 int ivtv_vapi_result (struct ivtv*,int *,int ,int,int) ;

__attribute__((used)) static int ivtv_setup_v4l2_decode_stream(struct ivtv_stream *s)
{
 u32 data[CX2341X_MBOX_MAX_DATA];
 struct ivtv *itv = s->itv;
 int datatype;
 u16 width;
 u16 height;

 if (s->vdev == ((void*)0))
  return -EINVAL;

 IVTV_DEBUG_INFO("Setting some initial decoder settings\n");

 width = itv->cxhdl.width;
 height = itv->cxhdl.height;


 ivtv_vapi(itv, CX2341X_DEC_SET_AUDIO_MODE, 2, itv->audio_bilingual_mode, itv->audio_stereo_mode);


 ivtv_vapi(itv, CX2341X_DEC_SET_DISPLAY_BUFFERS, 1, 0);


 ivtv_vapi(itv, CX2341X_DEC_SET_PREBUFFERING, 1, 1);


 ivtv_vapi_result(itv, data, CX2341X_DEC_EXTRACT_VBI, 1, 1);
 itv->vbi.dec_start = data[0];

 IVTV_DEBUG_INFO("Decoder VBI RE-Insert start 0x%08x size 0x%08x\n",
  itv->vbi.dec_start, data[1]);





 switch (s->type) {
 case 128:
  if (itv->output_mode == OUT_PASSTHROUGH) {
   datatype = 1;
  } else {

   datatype = 2;
   width = 720;
   height = itv->is_out_50hz ? 576 : 480;
  }
  IVTV_DEBUG_INFO("Setup DEC YUV Stream data[0] = %d\n", datatype);
  break;
 case 129:
 default:
  datatype = 0;
  break;
 }
 if (ivtv_vapi(itv, CX2341X_DEC_SET_DECODER_SOURCE, 4, datatype,
   width, height, itv->cxhdl.audio_properties)) {
  IVTV_DEBUG_WARN("Couldn't initialize decoder source\n");
 }


 ivtv_msleep_timeout(10, 0);


 return ivtv_firmware_check(itv, "ivtv_setup_v4l2_decode_stream");
}
