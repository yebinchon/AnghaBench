
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {int dummy; } ;
struct file {struct saa7134_fh* private_data; } ;


 int EINVAL ;
 int s_tuner ;
 int saa_call_all (struct saa7134_dev*,int ,int ,struct v4l2_tuner*) ;
 int tuner ;

__attribute__((used)) static int radio_s_tuner(struct file *file, void *priv,
     struct v4l2_tuner *t)
{
 struct saa7134_fh *fh = file->private_data;
 struct saa7134_dev *dev = fh->dev;

 if (0 != t->index)
  return -EINVAL;

 saa_call_all(dev, tuner, s_tuner, t);
 return 0;
}
