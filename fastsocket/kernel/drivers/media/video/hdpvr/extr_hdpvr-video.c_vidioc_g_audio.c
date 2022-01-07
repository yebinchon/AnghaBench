
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_audio {size_t index; char* name; int capability; } ;
struct hdpvr_fh {struct hdpvr_device* dev; } ;
struct TYPE_2__ {size_t audio_input; } ;
struct hdpvr_device {TYPE_1__ options; } ;
struct file {struct hdpvr_fh* private_data; } ;


 int V4L2_AUDCAP_STEREO ;
 int * audio_iname ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static int vidioc_g_audio(struct file *file, void *private_data,
     struct v4l2_audio *audio)
{
 struct hdpvr_fh *fh = file->private_data;
 struct hdpvr_device *dev = fh->dev;

 audio->index = dev->options.audio_input;
 audio->capability = V4L2_AUDCAP_STEREO;
 strncpy(audio->name, audio_iname[audio->index], sizeof(audio->name));
 audio->name[sizeof(audio->name) - 1] = '\0';
 return 0;
}
