
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int dummy; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;


 int cx231xx_queryctrl (struct cx231xx*,struct v4l2_queryctrl*) ;
 int dprintk (int,char*) ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *priv,
    struct v4l2_queryctrl *c)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 dprintk(3, "enter vidioc_queryctrl()\n");
 dprintk(3, "exit vidioc_queryctrl()\n");
 return cx231xx_queryctrl(dev, c);
}
