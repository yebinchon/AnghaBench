
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; struct v4l2_capability* bus_info; int card; int driver; } ;
struct TYPE_5__ {int sensor_flags; } ;
struct TYPE_4__ {int product; int device_type; } ;
struct TYPE_6__ {TYPE_2__ version; TYPE_1__ pnp_id; } ;
struct camera_data {int dev; TYPE_3__ params; } ;


 int CPIA2_MAJ_VER ;
 int CPIA2_MIN_VER ;
 int CPIA2_PATCH_VER ;







 int KERNEL_VERSION (int ,int ,int ) ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int memset (struct v4l2_capability*,int ,int) ;
 int strcat (int ,char*) ;
 int strcpy (int ,char*) ;
 scalar_t__ usb_make_path (int ,struct v4l2_capability*,int) ;

__attribute__((used)) static int ioctl_querycap(void *arg, struct camera_data *cam)
{
 struct v4l2_capability *vc = arg;

 memset(vc, 0, sizeof(*vc));
 strcpy(vc->driver, "cpia2");

 if (cam->params.pnp_id.product == 0x151)
  strcpy(vc->card, "QX5 Microscope");
 else
  strcpy(vc->card, "CPiA2 Camera");
 switch (cam->params.pnp_id.device_type) {
 case 129:
  strcat(vc->card, " (672/");
  break;
 case 128:
  strcat(vc->card, " (676/");
  break;
 default:
  strcat(vc->card, " (???/");
  break;
 }
 switch (cam->params.version.sensor_flags) {
 case 134:
  strcat(vc->card, "404)");
  break;
 case 133:
  strcat(vc->card, "407)");
  break;
 case 132:
  strcat(vc->card, "409)");
  break;
 case 131:
  strcat(vc->card, "410)");
  break;
 case 130:
  strcat(vc->card, "500)");
  break;
 default:
  strcat(vc->card, "???)");
  break;
 }

 if (usb_make_path(cam->dev, vc->bus_info, sizeof(vc->bus_info)) <0)
  memset(vc->bus_info,0, sizeof(vc->bus_info));

 vc->version = KERNEL_VERSION(CPIA2_MAJ_VER, CPIA2_MIN_VER,
         CPIA2_PATCH_VER);

 vc->capabilities = V4L2_CAP_VIDEO_CAPTURE |
      V4L2_CAP_READWRITE |
      V4L2_CAP_STREAMING;

 return 0;
}
