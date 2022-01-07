
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_encoder_cmd {int cmd; int flags; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int i_flags; int capturing; } ;
struct file {int dummy; } ;


 int CX2341X_ENC_PAUSE_ENCODER ;
 int EINVAL ;
 int EPERM ;
 int IVTV_DEBUG_IOCTL (char*,...) ;
 int IVTV_F_I_ENC_PAUSED ;




 int V4L2_ENC_CMD_STOP_AT_GOP_END ;
 int atomic_read (int *) ;
 int ivtv_mute (struct ivtv*) ;
 int ivtv_start_capture (struct ivtv_open_id*) ;
 int ivtv_stop_capture (struct ivtv_open_id*,int) ;
 int ivtv_unmute (struct ivtv*) ;
 int ivtv_vapi (struct ivtv*,int ,int,int) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int ivtv_encoder_cmd(struct file *file, void *fh, struct v4l2_encoder_cmd *enc)
{
 struct ivtv_open_id *id = fh;
 struct ivtv *itv = id->itv;


 switch (enc->cmd) {
 case 129:
  IVTV_DEBUG_IOCTL("V4L2_ENC_CMD_START\n");
  enc->flags = 0;
  return ivtv_start_capture(id);

 case 128:
  IVTV_DEBUG_IOCTL("V4L2_ENC_CMD_STOP\n");
  enc->flags &= V4L2_ENC_CMD_STOP_AT_GOP_END;
  ivtv_stop_capture(id, enc->flags & V4L2_ENC_CMD_STOP_AT_GOP_END);
  return 0;

 case 131:
  IVTV_DEBUG_IOCTL("V4L2_ENC_CMD_PAUSE\n");
  enc->flags = 0;

  if (!atomic_read(&itv->capturing))
   return -EPERM;
  if (test_and_set_bit(IVTV_F_I_ENC_PAUSED, &itv->i_flags))
   return 0;

  ivtv_mute(itv);
  ivtv_vapi(itv, CX2341X_ENC_PAUSE_ENCODER, 1, 0);
  break;

 case 130:
  IVTV_DEBUG_IOCTL("V4L2_ENC_CMD_RESUME\n");
  enc->flags = 0;

  if (!atomic_read(&itv->capturing))
   return -EPERM;

  if (!test_and_clear_bit(IVTV_F_I_ENC_PAUSED, &itv->i_flags))
   return 0;

  ivtv_vapi(itv, CX2341X_ENC_PAUSE_ENCODER, 1, 1);
  ivtv_unmute(itv);
  break;
 default:
  IVTV_DEBUG_IOCTL("Unknown cmd %d\n", enc->cmd);
  return -EINVAL;
 }

 return 0;
}
