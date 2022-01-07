
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct au0828_dev {int v4l2_dev; } ;


 int core ;
 int s_std ;
 int v4l2_device_call_all (int *,int ,int ,int ,int ) ;

__attribute__((used)) static int vidioc_s_std(struct file *file, void *priv, v4l2_std_id * norm)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;





 v4l2_device_call_all(&dev->v4l2_dev, 0, core, s_std, *norm);
 return 0;
}
