
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdpvr_device {int flags; int* usbc_buf; int usbc_mutex; int udev; int v4l2_dev; } ;
typedef enum v4l2_mpeg_audio_encoding { ____Placeholder_v4l2_mpeg_audio_encoding } v4l2_mpeg_audio_encoding ;


 int CTRL_AUDIO_INPUT_VALUE ;
 int CTRL_DEFAULT_INDEX ;
 int EINVAL ;
 int HDPVR_FLAG_AC3_CAP ;
 int V4L2_MPEG_AUDIO_ENCODING_AAC ;
 int V4L2_MPEG_AUDIO_ENCODING_AC3 ;
 int hdpvr_config_call (struct hdpvr_device*,int ,int) ;
 int memset (int*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;
 int v4l2_err (int *,char*,int) ;

int hdpvr_set_audio(struct hdpvr_device *dev, u8 input,
      enum v4l2_mpeg_audio_encoding codec)
{
 int ret = 0;

 if (dev->flags & HDPVR_FLAG_AC3_CAP) {
  mutex_lock(&dev->usbc_mutex);
  memset(dev->usbc_buf, 0, 2);
  dev->usbc_buf[0] = input;
  if (codec == V4L2_MPEG_AUDIO_ENCODING_AAC)
   dev->usbc_buf[1] = 0;
  else if (codec == V4L2_MPEG_AUDIO_ENCODING_AC3)
   dev->usbc_buf[1] = 1;
  else {
   mutex_unlock(&dev->usbc_mutex);
   v4l2_err(&dev->v4l2_dev, "invalid audio codec %d\n",
     codec);
   ret = -EINVAL;
   goto error;
  }

  ret = usb_control_msg(dev->udev,
          usb_sndctrlpipe(dev->udev, 0),
          0x01, 0x38, CTRL_AUDIO_INPUT_VALUE,
          CTRL_DEFAULT_INDEX, dev->usbc_buf, 2,
          1000);
  mutex_unlock(&dev->usbc_mutex);
  if (ret == 2)
   ret = 0;
 } else
  ret = hdpvr_config_call(dev, CTRL_AUDIO_INPUT_VALUE, input);
error:
 return ret;
}
