
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {scalar_t__ index; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {size_t cur_input; } ;
struct file {int dummy; } ;


 int DEB_D (char*) ;
 int DEB_EE (char*) ;
 int EINVAL ;
 scalar_t__ MXB_INPUTS ;
 int memcpy (struct v4l2_audio*,int *,int) ;
 int * mxb_audios ;
 size_t* video_audio_connect ;

__attribute__((used)) static int vidioc_g_audio(struct file *file, void *fh, struct v4l2_audio *a)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct mxb *mxb = (struct mxb *)dev->ext_priv;

 if (a->index > MXB_INPUTS) {
  DEB_D(("VIDIOC_G_AUDIO %d out of range.\n", a->index));
  return -EINVAL;
 }

 DEB_EE(("VIDIOC_G_AUDIO %d.\n", a->index));
 memcpy(a, &mxb_audios[video_audio_connect[mxb->cur_input]], sizeof(struct v4l2_audio));
 return 0;
}
