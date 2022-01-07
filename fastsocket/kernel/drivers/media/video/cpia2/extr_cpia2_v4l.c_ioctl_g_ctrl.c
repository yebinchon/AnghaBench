
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct v4l2_control {int id; int value; } ;
struct TYPE_14__ {int user_effects; int gpio_data; int frame_rate; } ;
struct TYPE_13__ {int stream_mode; } ;
struct TYPE_12__ {int cam_register; } ;
struct TYPE_11__ {int target_kb; } ;
struct TYPE_10__ {int brightness; int contrast; int saturation; } ;
struct TYPE_15__ {TYPE_5__ vp_params; TYPE_4__ camera_state; TYPE_3__ flicker_control; TYPE_2__ vc_params; TYPE_1__ color_params; } ;
struct camera_data {TYPE_6__ params; } ;
struct TYPE_18__ {int value; } ;
struct TYPE_17__ {int value; } ;
struct TYPE_16__ {int value; } ;
 int CPIA2_CMD_GET_CONTRAST ;
 int CPIA2_CMD_GET_FLICKER_MODES ;
 int CPIA2_CMD_GET_USER_EFFECTS ;
 int CPIA2_CMD_GET_VP_BRIGHTNESS ;
 int CPIA2_CMD_GET_VP_GPIO_DATA ;
 int CPIA2_CMD_GET_VP_SATURATION ;
 int CPIA2_VP_FLICKER_MODES_50HZ ;
 int CPIA2_VP_FLICKER_MODES_NEVER_FLICKER ;
 int CPIA2_VP_USER_EFFECTS_FLIP ;
 int CPIA2_VP_USER_EFFECTS_MIRROR ;
 int DBG (char*,int,int) ;
 int EINVAL ;
 int FLICKER_50 ;
 int FLICKER_60 ;
 int GPIO_LIGHTS_MASK ;
 int NEVER_FLICKER ;
 int NUM_FLICKER_CONTROLS ;
 int NUM_FRAMERATE_CONTROLS ;
 int NUM_LIGHTS_CONTROLS ;
 int TRANSFER_READ ;





 int cpia2_do_command (struct camera_data*,int ,int ,int ) ;
 TYPE_9__* flicker_controls ;
 TYPE_8__* framerate_controls ;
 TYPE_7__* lights_controls ;

__attribute__((used)) static int ioctl_g_ctrl(void *arg,struct camera_data *cam)
{
 struct v4l2_control *c = arg;

 switch(c->id) {
 case 132:
  cpia2_do_command(cam, CPIA2_CMD_GET_VP_BRIGHTNESS,
     TRANSFER_READ, 0);
  c->value = cam->params.color_params.brightness;
  break;
 case 131:
  cpia2_do_command(cam, CPIA2_CMD_GET_CONTRAST,
     TRANSFER_READ, 0);
  c->value = cam->params.color_params.contrast;
  break;
 case 129:
  cpia2_do_command(cam, CPIA2_CMD_GET_VP_SATURATION,
     TRANSFER_READ, 0);
  c->value = cam->params.color_params.saturation;
  break;
 case 130:
  cpia2_do_command(cam, CPIA2_CMD_GET_USER_EFFECTS,
     TRANSFER_READ, 0);
  c->value = (cam->params.vp_params.user_effects &
       CPIA2_VP_USER_EFFECTS_MIRROR) != 0;
  break;
 case 128:
  cpia2_do_command(cam, CPIA2_CMD_GET_USER_EFFECTS,
     TRANSFER_READ, 0);
  c->value = (cam->params.vp_params.user_effects &
       CPIA2_VP_USER_EFFECTS_FLIP) != 0;
  break;
 case 134:
  c->value = cam->params.vc_params.target_kb;
  break;
 case 137:
  cpia2_do_command(cam, CPIA2_CMD_GET_VP_GPIO_DATA,
     TRANSFER_READ, 0);
  c->value = cam->params.vp_params.gpio_data;
  break;
 case 139:
 {
  int i, mode;
  cpia2_do_command(cam, CPIA2_CMD_GET_FLICKER_MODES,
     TRANSFER_READ, 0);
  if(cam->params.flicker_control.cam_register &
     CPIA2_VP_FLICKER_MODES_NEVER_FLICKER) {
   mode = NEVER_FLICKER;
  } else {
      if(cam->params.flicker_control.cam_register &
         CPIA2_VP_FLICKER_MODES_50HZ) {
   mode = FLICKER_50;
      } else {
   mode = FLICKER_60;
      }
  }
  for(i=0; i<NUM_FLICKER_CONTROLS; i++) {
   if(flicker_controls[i].value == mode) {
    c->value = i;
    break;
   }
  }
  if(i == NUM_FLICKER_CONTROLS)
   return -EINVAL;
  break;
 }
 case 138:
 {
  int maximum = NUM_FRAMERATE_CONTROLS - 1;
  int i;
  for(i=0; i<= maximum; i++) {
   if(cam->params.vp_params.frame_rate ==
      framerate_controls[i].value)
    break;
  }
  if(i > maximum)
   return -EINVAL;
  c->value = i;
  break;
 }
 case 133:
  c->value = cam->params.camera_state.stream_mode;
  break;
 case 136:
 {
  int i;
  cpia2_do_command(cam, CPIA2_CMD_GET_VP_GPIO_DATA,
     TRANSFER_READ, 0);
  for(i=0; i<NUM_LIGHTS_CONTROLS; i++) {
   if((cam->params.vp_params.gpio_data&GPIO_LIGHTS_MASK) ==
      lights_controls[i].value) {
    break;
   }
  }
  if(i == NUM_LIGHTS_CONTROLS)
   return -EINVAL;
  c->value = i;
  break;
 }
 case 135:
  return -EINVAL;
 default:
  return -EINVAL;
 }

 DBG("Get control id:%d, value:%d\n", c->id, c->value);

 return 0;
}
