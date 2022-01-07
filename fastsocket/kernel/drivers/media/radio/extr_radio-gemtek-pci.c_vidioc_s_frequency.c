
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; } ;
struct gemtek_pci {int mute; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int GEMTEK_PCI_RANGE_HIGH ;
 int GEMTEK_PCI_RANGE_LOW ;
 int gemtek_pci_setfrequency (struct gemtek_pci*,int ) ;
 struct gemtek_pci* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct gemtek_pci *card = video_drvdata(file);

 if (f->frequency < GEMTEK_PCI_RANGE_LOW ||
     f->frequency > GEMTEK_PCI_RANGE_HIGH)
  return -EINVAL;
 gemtek_pci_setfrequency(card, f->frequency);
 card->mute = 0;
 return 0;
}
