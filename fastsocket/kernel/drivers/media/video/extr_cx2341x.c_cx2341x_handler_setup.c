
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx2341x_handler {int height; int width; int port; int hdl; int video_encoding; int is_50hz; } ;


 int CX2341X_ENC_SET_FRAME_RATE ;
 int CX2341X_ENC_SET_FRAME_SIZE ;
 int CX2341X_ENC_SET_OUTPUT_PORT ;
 scalar_t__ V4L2_MPEG_VIDEO_ENCODING_MPEG_1 ;
 int cx2341x_hdl_api (struct cx2341x_handler*,int ,int,int,...) ;
 scalar_t__ v4l2_ctrl_g_ctrl (int ) ;
 int v4l2_ctrl_handler_setup (int *) ;

int cx2341x_handler_setup(struct cx2341x_handler *cxhdl)
{
 int h = cxhdl->height;
 int w = cxhdl->width;
 int err;

 err = cx2341x_hdl_api(cxhdl, CX2341X_ENC_SET_OUTPUT_PORT, 2, cxhdl->port, 0);
 if (err)
  return err;
 err = cx2341x_hdl_api(cxhdl, CX2341X_ENC_SET_FRAME_RATE, 1, cxhdl->is_50hz);
 if (err)
  return err;

 if (v4l2_ctrl_g_ctrl(cxhdl->video_encoding) == V4L2_MPEG_VIDEO_ENCODING_MPEG_1) {
  w /= 2;
  h /= 2;
 }
 err = cx2341x_hdl_api(cxhdl, CX2341X_ENC_SET_FRAME_SIZE, 2, h, w);
 if (err)
  return err;
 return v4l2_ctrl_handler_setup(&cxhdl->hdl);
}
