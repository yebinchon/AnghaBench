
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int capability; int audmode; int type; int name; scalar_t__ index; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {int cur_mode; } ;
struct file {int dummy; } ;


 int DEB_D (char*) ;
 int DEB_EE (char*) ;
 int EINVAL ;
 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_CAP_LANG1 ;
 int V4L2_TUNER_CAP_LANG2 ;
 int V4L2_TUNER_CAP_NORM ;
 int V4L2_TUNER_CAP_SAP ;
 int V4L2_TUNER_CAP_STEREO ;
 int call_all (struct saa7146_dev*,int ,int ,struct v4l2_tuner*) ;
 int g_tuner ;
 int memset (struct v4l2_tuner*,int ,int) ;
 int strlcpy (int ,char*,int) ;
 int tuner ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *fh, struct v4l2_tuner *t)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct mxb *mxb = (struct mxb *)dev->ext_priv;

 if (t->index) {
  DEB_D(("VIDIOC_G_TUNER: channel %d does not have a tuner attached.\n", t->index));
  return -EINVAL;
 }

 DEB_EE(("VIDIOC_G_TUNER: %d\n", t->index));

 memset(t, 0, sizeof(*t));
 strlcpy(t->name, "TV Tuner", sizeof(t->name));
 t->type = V4L2_TUNER_ANALOG_TV;
 t->capability = V4L2_TUNER_CAP_NORM | V4L2_TUNER_CAP_STEREO |
   V4L2_TUNER_CAP_LANG1 | V4L2_TUNER_CAP_LANG2 | V4L2_TUNER_CAP_SAP;
 t->audmode = mxb->cur_mode;
 return call_all(dev, tuner, g_tuner, t);
}
