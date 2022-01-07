
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct gemtek_pci {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;


 int gemtek_pci_mute (struct gemtek_pci*) ;
 int gemtek_pci_unmute (struct gemtek_pci*) ;
 struct gemtek_pci* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
     struct v4l2_control *ctrl)
{
 struct gemtek_pci *card = video_drvdata(file);

 switch (ctrl->id) {
 case 129:
  if (ctrl->value)
   gemtek_pci_mute(card);
  else
   gemtek_pci_unmute(card);
  return 0;
 case 128:
  if (ctrl->value)
   gemtek_pci_unmute(card);
  else
   gemtek_pci_mute(card);
  return 0;
 }
 return -EINVAL;
}
