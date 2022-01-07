
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char target_kb; } ;
struct TYPE_4__ {TYPE_1__ vc_params; } ;
struct camera_data {TYPE_2__ params; } ;


 int DBG (char*,unsigned char) ;
 int cpia2_reset_camera (struct camera_data*) ;
 int cpia2_usb_stream_pause (struct camera_data*) ;
 int cpia2_usb_stream_resume (struct camera_data*) ;

int cpia2_set_target_kb(struct camera_data *cam, unsigned char value)
{
 DBG("Requested target_kb = %d\n", value);
 if (value != cam->params.vc_params.target_kb) {

  cpia2_usb_stream_pause(cam);


  cam->params.vc_params.target_kb = value;
  cpia2_reset_camera(cam);

  cpia2_usb_stream_resume(cam);
 }

 return 0;
}
