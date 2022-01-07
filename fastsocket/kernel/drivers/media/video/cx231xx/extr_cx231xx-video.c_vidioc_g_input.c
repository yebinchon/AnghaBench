
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {unsigned int video_input; } ;



__attribute__((used)) static int vidioc_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;

 *i = dev->video_input;

 return 0;
}
