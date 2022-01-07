
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saturation; int contrast; int brightness; } ;
struct TYPE_4__ {TYPE_1__ color_params; } ;
struct camera_data {TYPE_2__ params; } ;


 int DBG (char*) ;
 int cpia2_set_brightness (struct camera_data*,int ) ;
 int cpia2_set_contrast (struct camera_data*,int ) ;
 int cpia2_set_saturation (struct camera_data*,int ) ;

void cpia2_set_color_params(struct camera_data *cam)
{
 DBG("Setting color params\n");
 cpia2_set_brightness(cam, cam->params.color_params.brightness);
 cpia2_set_contrast(cam, cam->params.color_params.contrast);
 cpia2_set_saturation(cam, cam->params.color_params.saturation);
}
