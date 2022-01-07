
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int stream_mode; } ;
struct TYPE_6__ {TYPE_2__ camera_state; } ;
struct camera_data {int streaming; int flush; int num_frames; scalar_t__ frame_count; TYPE_3__ params; TYPE_1__* curbuff; int workbuff; TYPE_1__* buffers; } ;
struct TYPE_4__ {int next; scalar_t__ length; int status; } ;


 int DBG (char*) ;
 int ERR (char*,unsigned int,...) ;
 int FRAME_EMPTY ;
 int USBIF_CMDONLY ;
 int cpia2_usb_change_streaming_alternate (struct camera_data*,unsigned int) ;
 int cpia2_usb_stream_resume (struct camera_data*) ;
 int set_alternate (struct camera_data*,int ) ;

int cpia2_usb_stream_start(struct camera_data *cam, unsigned int alternate)
{
 int ret;
 int old_alt;

 if(cam->streaming)
  return 0;

 if (cam->flush) {
  int i;
  DBG("Flushing buffers\n");
  for(i=0; i<cam->num_frames; ++i) {
   cam->buffers[i].status = FRAME_EMPTY;
   cam->buffers[i].length = 0;
  }
  cam->curbuff = &cam->buffers[0];
  cam->workbuff = cam->curbuff->next;
  cam->flush = 0;
 }

 old_alt = cam->params.camera_state.stream_mode;
 cam->params.camera_state.stream_mode = 0;
 ret = cpia2_usb_change_streaming_alternate(cam, alternate);
 if (ret < 0) {
  int ret2;
  ERR("cpia2_usb_change_streaming_alternate() = %d!\n", ret);
  cam->params.camera_state.stream_mode = old_alt;
  ret2 = set_alternate(cam, USBIF_CMDONLY);
  if (ret2 < 0) {
   ERR("cpia2_usb_change_streaming_alternate(%d) =%d has already "
       "failed. Then tried to call "
       "set_alternate(USBIF_CMDONLY) = %d.\n",
       alternate, ret, ret2);
  }
 } else {
  cam->frame_count = 0;
  cam->streaming = 1;
  ret = cpia2_usb_stream_resume(cam);
 }
 return ret;
}
