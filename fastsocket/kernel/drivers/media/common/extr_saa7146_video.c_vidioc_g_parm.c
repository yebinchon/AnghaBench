
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int readbuffers; int timeperframe; } ;
struct TYPE_6__ {TYPE_2__ capture; } ;
struct v4l2_streamparm {TYPE_3__ parm; } ;
struct saa7146_vv {TYPE_1__* standard; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int id; } ;


 int v4l2_video_std_frame_period (int ,int *) ;

__attribute__((used)) static int vidioc_g_parm(struct file *file, void *fh,
  struct v4l2_streamparm *parm)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct saa7146_vv *vv = dev->vv_data;

 parm->parm.capture.readbuffers = 1;
 v4l2_video_std_frame_period(vv->standard->id,
        &parm->parm.capture.timeperframe);
 return 0;
}
