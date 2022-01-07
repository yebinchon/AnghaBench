
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int id; int value; } ;
struct saa7164_encoder_params {int gop_size; int bitrate_peak; int refdist; int bitrate_mode; int ctl_aspect; int ctl_mute; int stream_type; int bitrate; } ;
struct saa7164_port {struct saa7164_encoder_params encoder_params; } ;


 int EINVAL ;
__attribute__((used)) static int saa7164_get_ctrl(struct saa7164_port *port,
 struct v4l2_ext_control *ctrl)
{
 struct saa7164_encoder_params *params = &port->encoder_params;

 switch (ctrl->id) {
 case 132:
  ctrl->value = params->bitrate;
  break;
 case 134:
  ctrl->value = params->stream_type;
  break;
 case 135:
  ctrl->value = params->ctl_mute;
  break;
 case 133:
  ctrl->value = params->ctl_aspect;
  break;
 case 131:
  ctrl->value = params->bitrate_mode;
  break;
 case 129:
  ctrl->value = params->refdist;
  break;
 case 130:
  ctrl->value = params->bitrate_peak;
  break;
 case 128:
  ctrl->value = params->gop_size;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
