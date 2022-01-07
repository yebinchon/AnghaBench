
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_control {int id; scalar_t__ value; } ;
struct camera_data {int dummy; } ;
struct TYPE_8__ {int id; scalar_t__ minimum; scalar_t__ maximum; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {scalar_t__ value; } ;
 int DBG (char*,int,scalar_t__) ;
 int EINVAL ;
 int NUM_CONTROLS ;





 TYPE_4__* controls ;
 int cpia2_reset_camera (struct camera_data*) ;
 int cpia2_set_brightness (struct camera_data*,scalar_t__) ;
 int cpia2_set_contrast (struct camera_data*,scalar_t__) ;
 int cpia2_set_flicker_mode (struct camera_data*,int ) ;
 int cpia2_set_fps (struct camera_data*,int ) ;
 int cpia2_set_gpio (struct camera_data*,scalar_t__) ;
 int cpia2_set_property_flip (struct camera_data*,scalar_t__) ;
 int cpia2_set_property_mirror (struct camera_data*,scalar_t__) ;
 int cpia2_set_saturation (struct camera_data*,scalar_t__) ;
 int cpia2_set_target_kb (struct camera_data*,scalar_t__) ;
 int cpia2_usb_change_streaming_alternate (struct camera_data*,size_t) ;
 int cpia2_usb_stream_pause (struct camera_data*) ;
 int cpia2_usb_stream_resume (struct camera_data*) ;
 TYPE_3__* flicker_controls ;
 TYPE_2__* framerate_controls ;
 TYPE_1__* lights_controls ;

__attribute__((used)) static int ioctl_s_ctrl(void *arg,struct camera_data *cam)
{
 struct v4l2_control *c = arg;
 int i;
 int retval = 0;

 DBG("Set control id:%d, value:%d\n", c->id, c->value);


 for(i=0; i<NUM_CONTROLS; i++) {
  if(c->id == controls[i].id) {
   if(c->value < controls[i].minimum ||
      c->value > controls[i].maximum) {
    return -EINVAL;
   }
   break;
  }
 }
 if(i == NUM_CONTROLS)
  return -EINVAL;

 switch(c->id) {
 case 132:
  cpia2_set_brightness(cam, c->value);
  break;
 case 131:
  cpia2_set_contrast(cam, c->value);
  break;
 case 129:
  cpia2_set_saturation(cam, c->value);
  break;
 case 130:
  cpia2_set_property_mirror(cam, c->value);
  break;
 case 128:
  cpia2_set_property_flip(cam, c->value);
  break;
 case 134:
  retval = cpia2_set_target_kb(cam, c->value);
  break;
 case 137:
  retval = cpia2_set_gpio(cam, c->value);
  break;
 case 139:
  retval = cpia2_set_flicker_mode(cam,
           flicker_controls[c->value].value);
  break;
 case 138:
  retval = cpia2_set_fps(cam, framerate_controls[c->value].value);
  break;
 case 133:
  retval = cpia2_usb_change_streaming_alternate(cam, c->value);
  break;
 case 136:
  retval = cpia2_set_gpio(cam, lights_controls[c->value].value);
  break;
 case 135:
  cpia2_usb_stream_pause(cam);
  cpia2_reset_camera(cam);
  cpia2_usb_stream_resume(cam);
  break;
 default:
  retval = -EINVAL;
 }

 return retval;
}
