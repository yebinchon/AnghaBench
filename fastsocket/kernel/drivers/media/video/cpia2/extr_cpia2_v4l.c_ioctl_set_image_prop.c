
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_picture {int brightness; int colour; int contrast; } ;
struct TYPE_3__ {int brightness; int saturation; int contrast; } ;
struct TYPE_4__ {TYPE_1__ color_params; } ;
struct camera_data {TYPE_2__ params; int vp; } ;


 int DBG (char*,int,int,int) ;
 int cpia2_set_color_params (struct camera_data*) ;
 int memcpy (int *,struct video_picture*,int) ;

__attribute__((used)) static int ioctl_set_image_prop(void *arg, struct camera_data *cam)
{
 struct video_picture *vp;
 int retval = 0;
 vp = arg;


 memcpy(&cam->vp, vp, sizeof(*vp));


 cam->params.color_params.brightness = vp->brightness / 256;
 cam->params.color_params.saturation = vp->colour / 256;
 cam->params.color_params.contrast = vp->contrast / 256;

 DBG("Requested params: bright 0x%X, sat 0x%X, contrast 0x%X\n",
     cam->params.color_params.brightness,
     cam->params.color_params.saturation,
     cam->params.color_params.contrast);

 cpia2_set_color_params(cam);

 return retval;
}
