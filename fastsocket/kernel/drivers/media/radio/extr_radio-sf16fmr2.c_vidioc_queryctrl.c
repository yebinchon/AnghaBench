
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; } ;
struct fmr2 {int card_type; } ;
struct file {int dummy; } ;


 int EINVAL ;


 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int ,int,int,int) ;
 struct fmr2* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *priv,
     struct v4l2_queryctrl *qc)
{
 struct fmr2 *fmr2 = video_drvdata(file);

 switch (qc->id) {
 case 129:
  return v4l2_ctrl_query_fill(qc, 0, 1, 1, 1);
 case 128:

  if (fmr2->card_type == 11)
   return v4l2_ctrl_query_fill(qc, 0, 15, 1, 0);
  return v4l2_ctrl_query_fill(qc, 0, 1, 1, 0);
 }
 return -EINVAL;
}
