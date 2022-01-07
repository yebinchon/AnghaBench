
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int signal; int audmode; int capability; int rxsubchans; int rangehigh; int rangelow; int type; int name; } ;
struct gemtek_pci {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int GEMTEK_PCI_RANGE_HIGH ;
 int GEMTEK_PCI_RANGE_LOW ;
 int V4L2_TUNER_CAP_LOW ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int gemtek_pci_getsignal (struct gemtek_pci*) ;
 int strlcpy (int ,char*,int) ;
 struct gemtek_pci* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
     struct v4l2_tuner *v)
{
 struct gemtek_pci *card = video_drvdata(file);

 if (v->index > 0)
  return -EINVAL;

 strlcpy(v->name, "FM", sizeof(v->name));
 v->type = V4L2_TUNER_RADIO;
 v->rangelow = GEMTEK_PCI_RANGE_LOW;
 v->rangehigh = GEMTEK_PCI_RANGE_HIGH;
 v->rxsubchans = V4L2_TUNER_SUB_MONO;
 v->capability = V4L2_TUNER_CAP_LOW;
 v->audmode = V4L2_TUNER_MODE_MONO;
 v->signal = 0xffff * gemtek_pci_getsignal(card);
 return 0;
}
