
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_queryctrl {int id; int flags; } ;
struct si470x_device {TYPE_1__* videodev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;


 int V4L2_CID_BASE ;
 int V4L2_CID_LASTP1 ;
 int V4L2_CTRL_FLAG_DISABLED ;
 int dev_warn (int *,char*,int) ;
 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int ,int,int,int) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static int si470x_vidioc_queryctrl(struct file *file, void *priv,
  struct v4l2_queryctrl *qc)
{
 struct si470x_device *radio = video_drvdata(file);
 int retval = -EINVAL;


 if (qc->id < V4L2_CID_BASE)
  goto done;


 switch (qc->id) {
 case 128:
  return v4l2_ctrl_query_fill(qc, 0, 15, 1, 15);
 case 129:
  return v4l2_ctrl_query_fill(qc, 0, 1, 1, 1);
 }



 if ((retval == -EINVAL) && (qc->id < V4L2_CID_LASTP1)) {
  qc->flags = V4L2_CTRL_FLAG_DISABLED;
  retval = 0;
 }

done:
 if (retval < 0)
  dev_warn(&radio->videodev->dev,
   "query controls failed with %d\n", retval);
 return retval;
}
