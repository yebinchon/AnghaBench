
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_audio {scalar_t__ index; } ;
struct hdpvr_fh {struct hdpvr_device* dev; } ;
struct TYPE_2__ {scalar_t__ audio_input; int audio_codec; } ;
struct hdpvr_device {scalar_t__ status; TYPE_1__ options; } ;
struct file {struct hdpvr_fh* private_data; } ;


 int EAGAIN ;
 int EINVAL ;
 scalar_t__ HDPVR_AUDIO_INPUTS ;
 scalar_t__ STATUS_IDLE ;
 int hdpvr_set_audio (struct hdpvr_device*,scalar_t__,int ) ;

__attribute__((used)) static int vidioc_s_audio(struct file *file, void *private_data,
     struct v4l2_audio *audio)
{
 struct hdpvr_fh *fh = file->private_data;
 struct hdpvr_device *dev = fh->dev;
 int retval;

 if (audio->index >= HDPVR_AUDIO_INPUTS)
  return -EINVAL;

 if (dev->status != STATUS_IDLE)
  return -EAGAIN;

 retval = hdpvr_set_audio(dev, audio->index+1, dev->options.audio_codec);
 if (!retval)
  dev->options.audio_input = audio->index;

 return retval;
}
