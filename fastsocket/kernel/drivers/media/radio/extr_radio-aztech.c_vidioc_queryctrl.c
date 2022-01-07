
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; } ;
struct file {int dummy; } ;


 int EINVAL ;


 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int ,int,int,int) ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *priv,
       struct v4l2_queryctrl *qc)
{
 switch (qc->id) {
 case 129:
  return v4l2_ctrl_query_fill(qc, 0, 1, 1, 1);
 case 128:
  return v4l2_ctrl_query_fill(qc, 0, 0xff, 1, 0xff);
 }
 return -EINVAL;
}
