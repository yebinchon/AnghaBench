
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_encoder_cmd {int cmd; int flags; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int IVTV_DEBUG_IOCTL (char*,...) ;




 int V4L2_ENC_CMD_STOP_AT_GOP_END ;

__attribute__((used)) static int ivtv_try_encoder_cmd(struct file *file, void *fh, struct v4l2_encoder_cmd *enc)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

 switch (enc->cmd) {
 case 129:
  IVTV_DEBUG_IOCTL("V4L2_ENC_CMD_START\n");
  enc->flags = 0;
  return 0;

 case 128:
  IVTV_DEBUG_IOCTL("V4L2_ENC_CMD_STOP\n");
  enc->flags &= V4L2_ENC_CMD_STOP_AT_GOP_END;
  return 0;

 case 131:
  IVTV_DEBUG_IOCTL("V4L2_ENC_CMD_PAUSE\n");
  enc->flags = 0;
  return 0;

 case 130:
  IVTV_DEBUG_IOCTL("V4L2_ENC_CMD_RESUME\n");
  enc->flags = 0;
  return 0;
 default:
  IVTV_DEBUG_IOCTL("Unknown cmd %d\n", enc->cmd);
  return -EINVAL;
 }
}
