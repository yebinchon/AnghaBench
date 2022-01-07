
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u32 ;
struct ivtv_stream {int type; int subtype; int s_flags; scalar_t__ buffers_stolen; int name; int * vdev; struct ivtv* itv; } ;
struct TYPE_7__ {int video_mute_yuv; int audio_mode; } ;
struct TYPE_5__ {int sliced_mpeg_size; int inserted_frame; int frame; } ;
struct ivtv {int dualwatch_stereo_mode; int v4l2_cap; int capturing; int sd_video; int sd_audio; TYPE_3__ cxhdl; int i_flags; scalar_t__ has_cx23415; void* pgm_info_num; void* pgm_info_offset; scalar_t__ pgm_info_read_idx; scalar_t__ pgm_info_write_idx; TYPE_2__* card; TYPE_1__ vbi; int output_mode; int search_pack_header; int dualwatch_jiffies; int vbi_data_inserted; int mpg_data_received; } ;
struct TYPE_6__ {int hw_all; } ;


 int CX2341X_ENC_INITIALIZE_INPUT ;
 int CX2341X_ENC_MISC ;
 int CX2341X_ENC_MUTE_VIDEO ;
 int CX2341X_ENC_SET_DMA_BLOCK_SIZE ;
 int CX2341X_ENC_SET_EVENT_NOTIFICATION ;
 int CX2341X_ENC_SET_NUM_VSYNC_LINES ;
 int CX2341X_ENC_SET_PGM_INDEX_INFO ;
 int CX2341X_ENC_SET_PLACEHOLDER ;
 int CX2341X_ENC_SET_VERT_CROP_LINE ;
 int CX2341X_ENC_START_CAPTURE ;
 int CX2341X_MBOX_MAX_DATA ;
 int EINVAL ;
 int IVTV_DEBUG_INFO (char*,void*,...) ;
 int IVTV_DEBUG_WARN (char*) ;




 int IVTV_F_I_DIG_RST ;
 int IVTV_F_I_EOS ;
 int IVTV_F_I_RADIO_USER ;
 int IVTV_F_S_STREAMOFF ;
 int IVTV_HW_SAA7114 ;
 int IVTV_HW_SAA7115 ;
 int IVTV_HW_SAA717X ;
 int IVTV_IRQ_ENC_VBI_CAP ;
 int IVTV_IRQ_ENC_VIM_RST ;
 int IVTV_IRQ_MASK_CAPTURE ;
 int OUT_PASSTHROUGH ;
 int V4L2_CAP_VBI_CAPTURE ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int audio ;
 int clear_bit (int ,int *) ;
 int cx2341x_handler_set_busy (TYPE_3__*,int) ;
 int cx2341x_handler_setup (TYPE_3__*) ;
 int ivtv_clear_irq_mask (struct ivtv*,int ) ;
 int ivtv_msleep_timeout (int,int) ;
 int ivtv_passthrough_mode (struct ivtv*,int) ;
 int ivtv_set_irq_mask (struct ivtv*,int ) ;
 scalar_t__ ivtv_vapi (struct ivtv*,int ,int,...) ;
 int ivtv_vapi_result (struct ivtv*,void**,int ,int,int,int) ;
 int ivtv_vbi_setup (struct ivtv*) ;
 int jiffies ;
 int memset (int ,int ,int) ;
 int s_stream ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int v4l2_ctrl_g_ctrl (int ) ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 int video ;

int ivtv_start_v4l2_encode_stream(struct ivtv_stream *s)
{
 u32 data[CX2341X_MBOX_MAX_DATA];
 struct ivtv *itv = s->itv;
 int captype = 0, subtype = 0;
 int enable_passthrough = 0;

 if (s->vdev == ((void*)0))
  return -EINVAL;

 IVTV_DEBUG_INFO("Start encoder stream %s\n", s->name);

 switch (s->type) {
 case 131:
  captype = 0;
  subtype = 3;


  if (itv->output_mode == OUT_PASSTHROUGH) {
   ivtv_passthrough_mode(itv, 0);
   enable_passthrough = 1;
  }
  itv->mpg_data_received = itv->vbi_data_inserted = 0;
  itv->dualwatch_jiffies = jiffies;
  itv->dualwatch_stereo_mode = v4l2_ctrl_g_ctrl(itv->cxhdl.audio_mode);
  itv->search_pack_header = 0;
  break;

 case 128:
  if (itv->output_mode == OUT_PASSTHROUGH) {
   captype = 2;
   subtype = 11;
   break;
  }
  captype = 1;
  subtype = 1;
  break;
 case 130:
  captype = 1;
  subtype = 2;
  break;
 case 129:
  captype = 1;
  subtype = 4;

  itv->vbi.frame = 0;
  itv->vbi.inserted_frame = 0;
  memset(itv->vbi.sliced_mpeg_size,
   0, sizeof(itv->vbi.sliced_mpeg_size));
  break;
 default:
  return -EINVAL;
 }
 s->subtype = subtype;
 s->buffers_stolen = 0;


 clear_bit(IVTV_F_S_STREAMOFF, &s->s_flags);

 if (atomic_read(&itv->capturing) == 0) {
  int digitizer;







  ivtv_vapi(itv, CX2341X_ENC_SET_DMA_BLOCK_SIZE, 2, 1, 1);


  ivtv_vapi(itv, CX2341X_ENC_SET_VERT_CROP_LINE, 1, 0);






  ivtv_vapi(itv, CX2341X_ENC_MISC, 2, 3, !itv->has_cx23415);
  ivtv_vapi(itv, CX2341X_ENC_MISC, 2, 8, 0);
  ivtv_vapi(itv, CX2341X_ENC_MISC, 2, 4, 1);
  ivtv_vapi(itv, CX2341X_ENC_MISC, 1, 12);


  ivtv_vapi(itv, CX2341X_ENC_SET_PLACEHOLDER, 12,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

  if (itv->card->hw_all & (IVTV_HW_SAA7115 | IVTV_HW_SAA717X))
      digitizer = 0xF1;
  else if (itv->card->hw_all & IVTV_HW_SAA7114)
      digitizer = 0xEF;
  else
      digitizer = 0x140;

  ivtv_vapi(itv, CX2341X_ENC_SET_NUM_VSYNC_LINES, 2, digitizer, digitizer);


  if (itv->v4l2_cap & V4L2_CAP_VBI_CAPTURE) {
   ivtv_vbi_setup(itv);
  }


  ivtv_vapi_result(itv, data, CX2341X_ENC_SET_PGM_INDEX_INFO, 2, 7, 400);
  itv->pgm_info_offset = data[0];
  itv->pgm_info_num = data[1];
  itv->pgm_info_write_idx = 0;
  itv->pgm_info_read_idx = 0;

  IVTV_DEBUG_INFO("PGM Index at 0x%08x with %d elements\n",
    itv->pgm_info_offset, itv->pgm_info_num);


  cx2341x_handler_setup(&itv->cxhdl);


  if (test_bit(IVTV_F_I_RADIO_USER, &itv->i_flags))
   ivtv_vapi(itv, CX2341X_ENC_MUTE_VIDEO, 1,
    1 | (v4l2_ctrl_g_ctrl(itv->cxhdl.video_mute_yuv) << 8));
 }


 if (itv->has_cx23415 && !test_and_set_bit(IVTV_F_I_DIG_RST, &itv->i_flags)) {

  ivtv_vapi(itv, CX2341X_ENC_SET_EVENT_NOTIFICATION, 4, 0, 1, IVTV_IRQ_ENC_VIM_RST, -1);
  ivtv_clear_irq_mask(itv, IVTV_IRQ_ENC_VIM_RST);
 }

 if (atomic_read(&itv->capturing) == 0) {

  ivtv_set_irq_mask(itv, IVTV_IRQ_MASK_CAPTURE);

  clear_bit(IVTV_F_I_EOS, &itv->i_flags);

  cx2341x_handler_set_busy(&itv->cxhdl, 1);



  v4l2_subdev_call(itv->sd_audio, audio, s_stream, 1);

  v4l2_subdev_call(itv->sd_video, video, s_stream, 0);
  ivtv_msleep_timeout(300, 1);
  ivtv_vapi(itv, CX2341X_ENC_INITIALIZE_INPUT, 0);
  v4l2_subdev_call(itv->sd_video, video, s_stream, 1);
 }


 if (ivtv_vapi(itv, CX2341X_ENC_START_CAPTURE, 2, captype, subtype))
 {
  IVTV_DEBUG_WARN( "Error starting capture!\n");
  return -EINVAL;
 }


 if (enable_passthrough) {
  ivtv_passthrough_mode(itv, 1);
 }

 if (s->type == 129)
  ivtv_clear_irq_mask(itv, IVTV_IRQ_ENC_VBI_CAP);
 else
  ivtv_clear_irq_mask(itv, IVTV_IRQ_MASK_CAPTURE);


 atomic_inc(&itv->capturing);
 return 0;
}
