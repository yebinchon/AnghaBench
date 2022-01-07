
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; } ;
struct file {int dummy; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct au0828_dev {int ctrl_freq; } ;


 int V4L2_TUNER_ANALOG_TV ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
    struct v4l2_frequency *freq)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;

 freq->type = V4L2_TUNER_ANALOG_TV;
 freq->frequency = dev->ctrl_freq;
 return 0;
}
