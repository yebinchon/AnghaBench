
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int frame_rate; } ;
struct TYPE_7__ {scalar_t__ device_type; } ;
struct TYPE_6__ {int sensor_flags; } ;
struct TYPE_8__ {TYPE_1__ vp_params; TYPE_3__ pnp_id; TYPE_2__ version; } ;
struct camera_data {TYPE_4__ params; } ;


 int CPIA2_CMD_FRAMERATE_REQ ;






 int CPIA2_VP_SENSOR_FLAGS_500 ;
 scalar_t__ DEVICE_STV_672 ;
 int EINVAL ;
 int TRANSFER_WRITE ;
 int cpia2_do_command (struct camera_data*,int ,int ,int) ;

int cpia2_set_fps(struct camera_data *cam, int framerate)
{
 int retval;

 switch(framerate) {
  case 130:
  case 131:
   if(cam->params.pnp_id.device_type == DEVICE_STV_672 &&
      cam->params.version.sensor_flags ==
          CPIA2_VP_SENSOR_FLAGS_500) {
    return -EINVAL;
   }

  case 132:
  case 133:
  case 128:
  case 129:
   break;
  default:
   return -EINVAL;
 }

 if (cam->params.pnp_id.device_type == DEVICE_STV_672 &&
     framerate == 132)
  framerate = 0;

 retval = cpia2_do_command(cam,
     CPIA2_CMD_FRAMERATE_REQ,
     TRANSFER_WRITE,
     framerate);

 if(retval == 0)
  cam->params.vp_params.frame_rate = framerate;

 return retval;
}
