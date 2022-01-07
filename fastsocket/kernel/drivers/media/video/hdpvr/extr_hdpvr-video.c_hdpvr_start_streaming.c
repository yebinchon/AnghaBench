
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdpvr_video_info {int fps; int height; int width; } ;
struct TYPE_2__ {int video_input; } ;
struct hdpvr_device {scalar_t__ status; TYPE_1__ options; int v4l2_dev; int worker; int workqueue; int udev; } ;


 int CTRL_START_STREAMING_VALUE ;
 int EAGAIN ;
 int INIT_WORK (int *,int ) ;
 int MSG_BUFFER ;
 int MSG_INFO ;
 scalar_t__ STATUS_IDLE ;
 scalar_t__ STATUS_STREAMING ;
 struct hdpvr_video_info* get_video_info (struct hdpvr_device*) ;
 int hdpvr_config_call (struct hdpvr_device*,int ,int) ;
 int hdpvr_debug ;
 int hdpvr_transmit_buffers ;
 int kfree (struct hdpvr_video_info*) ;
 int msleep (int) ;
 int queue_work (int ,int *) ;
 int usb_control_msg (int ,int ,int,int,int,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;
 int v4l2_dbg (int ,int ,int *,char*,...) ;

__attribute__((used)) static int hdpvr_start_streaming(struct hdpvr_device *dev)
{
 int ret;
 struct hdpvr_video_info *vidinf;

 if (dev->status == STATUS_STREAMING)
  return 0;
 else if (dev->status != STATUS_IDLE)
  return -EAGAIN;

 vidinf = get_video_info(dev);

 if (vidinf) {
  v4l2_dbg(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
    "video signal: %dx%d@%dhz\n", vidinf->width,
    vidinf->height, vidinf->fps);
  kfree(vidinf);


  ret = usb_control_msg(dev->udev,
          usb_sndctrlpipe(dev->udev, 0),
          0xb8, 0x38, 0x1, 0, ((void*)0), 0, 8000);
  v4l2_dbg(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
    "encoder start control request returned %d\n", ret);

  hdpvr_config_call(dev, CTRL_START_STREAMING_VALUE, 0x00);

  INIT_WORK(&dev->worker, hdpvr_transmit_buffers);
  queue_work(dev->workqueue, &dev->worker);

  v4l2_dbg(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
    "streaming started\n");
  dev->status = STATUS_STREAMING;

  return 0;
 }
 msleep(250);
 v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
   "no video signal at input %d\n", dev->options.video_input);
 return -EAGAIN;
}
