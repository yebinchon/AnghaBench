
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; int signal; int rxsubchans; int type; int name; } ;
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {TYPE_1__* input; } ;
struct file {struct saa7134_fh* private_data; } ;
struct TYPE_2__ {scalar_t__ amux; } ;


 int EINVAL ;
 scalar_t__ TV ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int g_tuner ;
 int memset (struct v4l2_tuner*,int ,int) ;
 int saa_call_all (struct saa7134_dev*,int ,int ,struct v4l2_tuner*) ;
 int saa_readb (int) ;
 int strcpy (int ,char*) ;
 int tuner ;

__attribute__((used)) static int radio_g_tuner(struct file *file, void *priv,
     struct v4l2_tuner *t)
{
 struct saa7134_fh *fh = file->private_data;
 struct saa7134_dev *dev = fh->dev;

 if (0 != t->index)
  return -EINVAL;

 memset(t, 0, sizeof(*t));
 strcpy(t->name, "Radio");
 t->type = V4L2_TUNER_RADIO;

 saa_call_all(dev, tuner, g_tuner, t);
 if (dev->input->amux == TV) {
  t->signal = 0xf800 - ((saa_readb(0x581) & 0x1f) << 11);
  t->rxsubchans = (saa_readb(0x529) & 0x08) ?
    V4L2_TUNER_SUB_STEREO : V4L2_TUNER_SUB_MONO;
 }
 return 0;
}
