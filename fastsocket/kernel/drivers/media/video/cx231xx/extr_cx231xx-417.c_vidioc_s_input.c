
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {unsigned int input; int lock; } ;


 int EINVAL ;
 int dprintk (int,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int video_mux (struct cx231xx*,unsigned int) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *priv, unsigned int i)
{
 struct cx231xx_fh *fh = file->private_data;
 struct cx231xx *dev = fh->dev;

 dprintk(3, "enter vidioc_s_input() i=%d\n", i);

 mutex_lock(&dev->lock);

 video_mux(dev, i);

 mutex_unlock(&dev->lock);

 if (i >= 4)
  return -EINVAL;
 dev->input = i;
 dprintk(3, "exit vidioc_s_input()\n");
 return 0;
}
