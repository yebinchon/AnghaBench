
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_input {unsigned int index; char* name; int audioset; int std; int type; } ;
struct hdpvr_fh {struct hdpvr_device* dev; } ;
struct hdpvr_device {TYPE_1__* video_dev; } ;
struct file {struct hdpvr_fh* private_data; } ;
struct TYPE_2__ {int tvnorms; } ;


 int EINVAL ;
 int HDPVR_RCA_BACK ;
 int HDPVR_RCA_FRONT ;
 int HDPVR_SPDIF ;
 unsigned int HDPVR_VIDEO_INPUTS ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int * iname ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *priv,
    struct v4l2_input *i)
{
 struct hdpvr_fh *fh = file->private_data;
 struct hdpvr_device *dev = fh->dev;
 unsigned int n;

 n = i->index;
 if (n >= HDPVR_VIDEO_INPUTS)
  return -EINVAL;

 i->type = V4L2_INPUT_TYPE_CAMERA;

 strncpy(i->name, iname[n], sizeof(i->name) - 1);
 i->name[sizeof(i->name) - 1] = '\0';

 i->audioset = 1<<HDPVR_RCA_FRONT | 1<<HDPVR_RCA_BACK | 1<<HDPVR_SPDIF;

 i->std = dev->video_dev->tvnorms;

 return 0;
}
