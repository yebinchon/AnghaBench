
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_capability {int type; int channels; int minwidth; int minheight; int maxheight; int maxwidth; scalar_t__ audios; int name; } ;
struct TYPE_5__ {int sensor_flags; } ;
struct TYPE_4__ {int product; } ;
struct TYPE_6__ {TYPE_2__ version; TYPE_1__ pnp_id; } ;
struct camera_data {TYPE_3__ params; } ;




 int EINVAL ;
 int STV_IMAGE_CIF_COLS ;
 int STV_IMAGE_CIF_ROWS ;
 int STV_IMAGE_VGA_COLS ;
 int STV_IMAGE_VGA_ROWS ;
 int VID_TYPE_CAPTURE ;
 int VID_TYPE_MJPEG_ENCODER ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int ioctl_cap_query(void *arg, struct camera_data *cam)
{
 struct video_capability *vc;
 int retval = 0;
 vc = arg;

 if (cam->params.pnp_id.product == 0x151)
  strcpy(vc->name, "QX5 Microscope");
 else
  strcpy(vc->name, "CPiA2 Camera");

 vc->type = VID_TYPE_CAPTURE | VID_TYPE_MJPEG_ENCODER;
 vc->channels = 1;
 vc->audios = 0;
 vc->minwidth = 176;
 vc->minheight = 144;
 switch (cam->params.version.sensor_flags) {
 case 128:
  vc->maxwidth = STV_IMAGE_VGA_COLS;
  vc->maxheight = STV_IMAGE_VGA_ROWS;
  break;
 case 129:
  vc->maxwidth = STV_IMAGE_CIF_COLS;
  vc->maxheight = STV_IMAGE_CIF_ROWS;
  break;
 default:
  return -EINVAL;
 }

 return retval;
}
