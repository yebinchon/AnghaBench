
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdpvr_video_info {int dummy; } ;
struct hdpvr_device {int* usbc_buf; int status; int usbc_mutex; int v4l2_dev; int udev; } ;


 int CTRL_DEFAULT_INDEX ;
 int CTRL_LOW_PASS_FILTER_VALUE ;
 int EACCES ;
 int MSG_INFO ;
 int STATUS_IDLE ;
 int boost_audio ;
 scalar_t__ device_authorization (struct hdpvr_device*) ;
 struct hdpvr_video_info* get_video_info (struct hdpvr_device*) ;
 int hdpvr_debug ;
 int hdpvr_set_options (struct hdpvr_device*) ;
 int kfree (struct hdpvr_video_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;
 int v4l2_dbg (int ,int ,int *,char*,...) ;

__attribute__((used)) static int hdpvr_device_init(struct hdpvr_device *dev)
{
 int ret;
 u8 *buf;
 struct hdpvr_video_info *vidinf;

 if (device_authorization(dev))
  return -EACCES;


 hdpvr_set_options(dev);


 mutex_lock(&dev->usbc_mutex);
 buf = dev->usbc_buf;
 buf[0] = 0x03; buf[1] = 0x03; buf[2] = 0x00; buf[3] = 0x00;
 ret = usb_control_msg(dev->udev,
         usb_sndctrlpipe(dev->udev, 0),
         0x01, 0x38,
         CTRL_LOW_PASS_FILTER_VALUE, CTRL_DEFAULT_INDEX,
         buf, 4,
         1000);
 v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
   "control request returned %d\n", ret);
 mutex_unlock(&dev->usbc_mutex);

 vidinf = get_video_info(dev);
 if (!vidinf)
  v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
   "no valid video signal or device init failed\n");
 else
  kfree(vidinf);


 mutex_lock(&dev->usbc_mutex);
 buf[0] = 0x1;
 ret = usb_control_msg(dev->udev,
         usb_sndctrlpipe(dev->udev, 0),
         0xd4, 0x38, 0, 0, buf, 1,
         1000);
 v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
   "control request returned %d\n", ret);


 buf[0] = boost_audio;
 ret = usb_control_msg(dev->udev,
         usb_sndctrlpipe(dev->udev, 0),
         0xd5, 0x38, 0, 0, buf, 1,
         1000);
 v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
   "control request returned %d\n", ret);
 mutex_unlock(&dev->usbc_mutex);

 dev->status = STATUS_IDLE;
 return 0;
}
