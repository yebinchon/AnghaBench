
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct trust {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;




 int tr_setbass (struct trust*,int ) ;
 int tr_setmute (struct trust*,int ) ;
 int tr_settreble (struct trust*,int ) ;
 int tr_setvol (struct trust*,int ) ;
 struct trust* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct trust *tr = video_drvdata(file);

 switch (ctrl->id) {
 case 130:
  tr_setmute(tr, ctrl->value);
  return 0;
 case 128:
  tr_setvol(tr, ctrl->value);
  return 0;
 case 131:
  tr_setbass(tr, ctrl->value);
  return 0;
 case 129:
  tr_settreble(tr, ctrl->value);
  return 0;
 }
 return -EINVAL;
}
