
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct file {int dummy; } ;
struct av7110 {int current_input; int current_freq; int analog_tuner_flags; } ;


 int EINVAL ;
 int V4L2_TUNER_ANALOG_TV ;
 int dprintk (int,char*,int ) ;
 int memset (struct v4l2_frequency*,int ,int) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *fh, struct v4l2_frequency *f)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct av7110 *av7110 = (struct av7110 *)dev->ext_priv;

 dprintk(2, "VIDIOC_G_FREQ: freq:0x%08x.\n", f->frequency);

 if (!av7110->analog_tuner_flags || av7110->current_input != 1)
  return -EINVAL;

 memset(f, 0, sizeof(*f));
 f->type = V4L2_TUNER_ANALOG_TV;
 f->frequency = av7110->current_freq;
 return 0;
}
