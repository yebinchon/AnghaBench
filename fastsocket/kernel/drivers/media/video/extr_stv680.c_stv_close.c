
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct usb_stv {int maxframesize; scalar_t__ removed; scalar_t__ user; int fbuf; scalar_t__ streaming; TYPE_1__* frame; } ;
struct file {struct video_device* private_data; } ;
struct TYPE_2__ {int grabstate; } ;


 int FRAME_UNUSED ;
 int PDEBUG (int,char*) ;
 int STV680_NUMFRAMES ;
 int kfree (struct usb_stv*) ;
 int rvfree (int ,int) ;
 int stv680_stop_stream (struct usb_stv*) ;
 int stv_stop_video (struct usb_stv*) ;
 struct usb_stv* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int stv_close(struct file *file)
{
 struct video_device *dev = file->private_data;
 struct usb_stv *stv680 = video_get_drvdata(dev);
 int i;

 for (i = 0; i < STV680_NUMFRAMES; i++)
  stv680->frame[i].grabstate = FRAME_UNUSED;
 if (stv680->streaming)
  stv680_stop_stream (stv680);

 if ((i = stv_stop_video (stv680)) < 0)
  PDEBUG (1, "STV(e): stop_video failed in stv_close");

 rvfree (stv680->fbuf, stv680->maxframesize * STV680_NUMFRAMES);
 stv680->user = 0;

 if (stv680->removed) {
  kfree(stv680);
  stv680 = ((void*)0);
  PDEBUG (0, "STV(i): device unregistered");
 }
 file->private_data = ((void*)0);
 return 0;
}
