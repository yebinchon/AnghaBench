
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camera_data {int flush; } ;


 int cpia2_dbg_dump_registers (struct camera_data*) ;
 int cpia2_reset_camera (struct camera_data*) ;
 int cpia2_set_low_power (struct camera_data*) ;
 int cpia2_usb_stream_pause (struct camera_data*) ;
 int cpia2_usb_stream_resume (struct camera_data*) ;

void cpia2_set_format(struct camera_data *cam)
{
 cam->flush = 1;

 cpia2_usb_stream_pause(cam);


 cpia2_set_low_power(cam);
 cpia2_reset_camera(cam);
 cam->flush = 0;

 cpia2_dbg_dump_registers(cam);

 cpia2_usb_stream_resume(cam);
}
