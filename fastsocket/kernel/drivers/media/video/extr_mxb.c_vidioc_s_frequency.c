
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ type; int frequency; scalar_t__ tuner; } ;
struct saa7146_vv {scalar_t__ vbi_fieldcount; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {int slock; struct saa7146_vv* vv_data; scalar_t__ ext_priv; } ;
struct mxb {struct v4l2_frequency cur_freq; scalar_t__ cur_input; } ;
struct file {int dummy; } ;


 int DEB_D (char*) ;
 int DEB_EE (char*) ;
 int EINVAL ;
 scalar_t__ V4L2_TUNER_ANALOG_TV ;
 int s_frequency ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tuner ;
 int tuner_call (struct mxb*,int ,int ,struct v4l2_frequency*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *fh, struct v4l2_frequency *f)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct mxb *mxb = (struct mxb *)dev->ext_priv;
 struct saa7146_vv *vv = dev->vv_data;

 if (f->tuner)
  return -EINVAL;

 if (V4L2_TUNER_ANALOG_TV != f->type)
  return -EINVAL;

 if (mxb->cur_input) {
  DEB_D(("VIDIOC_S_FREQ: channel %d does not have a tuner!\n", mxb->cur_input));
  return -EINVAL;
 }

 mxb->cur_freq = *f;
 DEB_EE(("VIDIOC_S_FREQUENCY: freq:0x%08x.\n", mxb->cur_freq.frequency));


 tuner_call(mxb, tuner, s_frequency, &mxb->cur_freq);


 spin_lock(&dev->slock);
 vv->vbi_fieldcount = 0;
 spin_unlock(&dev->slock);

 return 0;
}
