
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct gemtek_pci {int mute; } ;
struct file {int dummy; } ;


 int EINVAL ;


 struct gemtek_pci* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
     struct v4l2_control *ctrl)
{
 struct gemtek_pci *card = video_drvdata(file);

 switch (ctrl->id) {
 case 129:
  ctrl->value = card->mute;
  return 0;
 case 128:
  if (card->mute)
   ctrl->value = 0;
  else
   ctrl->value = 65535;
  return 0;
 }
 return -EINVAL;
}
