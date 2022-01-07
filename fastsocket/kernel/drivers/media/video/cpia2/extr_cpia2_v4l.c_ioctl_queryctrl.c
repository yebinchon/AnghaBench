
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v4l2_queryctrl {int id; int minimum; int maximum; int default_value; int flags; } ;
struct TYPE_8__ {int product; int device_type; } ;
struct TYPE_7__ {int sensor_flags; } ;
struct TYPE_9__ {TYPE_2__ pnp_id; TYPE_1__ version; } ;
struct camera_data {TYPE_3__ params; } ;
struct TYPE_11__ {int value; } ;
struct TYPE_10__ {int id; } ;





 int CPIA2_VP_FRAMERATE_15 ;
 int CPIA2_VP_SENSOR_FLAGS_500 ;
 int DEVICE_STV_672 ;
 int EINVAL ;
 int NUM_CONTROLS ;


 int V4L2_CTRL_FLAG_DISABLED ;
 TYPE_4__* controls ;
 TYPE_5__* framerate_controls ;
 int memcpy (struct v4l2_queryctrl*,TYPE_4__*,int) ;

__attribute__((used)) static int ioctl_queryctrl(void *arg,struct camera_data *cam)
{
 struct v4l2_queryctrl *c = arg;
 int i;

 for(i=0; i<NUM_CONTROLS; ++i) {
  if(c->id == controls[i].id) {
   memcpy(c, controls+i, sizeof(*c));
   break;
  }
 }

 if(i == NUM_CONTROLS)
  return -EINVAL;


 switch(c->id) {
 case 129:




  if (cam->params.pnp_id.device_type == DEVICE_STV_672)
   c->minimum = 1;
  break;
 case 128:

  if(cam->params.pnp_id.device_type == DEVICE_STV_672)
   c->flags |= V4L2_CTRL_FLAG_DISABLED;
  break;
 case 131:
  if(cam->params.pnp_id.device_type == DEVICE_STV_672 &&
     cam->params.version.sensor_flags==CPIA2_VP_SENSOR_FLAGS_500){

   for(i=0; i<c->maximum; ++i) {
    if(framerate_controls[i].value ==
       CPIA2_VP_FRAMERATE_15) {
     c->maximum = i;
     c->default_value = i;
    }
   }
  }
  break;
 case 132:

  if(cam->params.pnp_id.device_type != DEVICE_STV_672)
   c->flags |= V4L2_CTRL_FLAG_DISABLED;
  break;
 case 130:

  if(cam->params.pnp_id.product != 0x151)
   c->flags |= V4L2_CTRL_FLAG_DISABLED;
  break;
 default:
  break;
 }

 return 0;
}
