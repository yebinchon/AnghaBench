
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct terratec {int curvol; } ;
struct file {int dummy; } ;


 int EINVAL ;


 int tt_mute (struct terratec*) ;
 int tt_setvol (struct terratec*,int ) ;
 struct terratec* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
     struct v4l2_control *ctrl)
{
 struct terratec *tt = video_drvdata(file);

 switch (ctrl->id) {
 case 129:
  if (ctrl->value)
   tt_mute(tt);
  else
   tt_setvol(tt,tt->curvol);
  return 0;
 case 128:
  tt_setvol(tt,ctrl->value);
  return 0;
 }
 return -EINVAL;
}
