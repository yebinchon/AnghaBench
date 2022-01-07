
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct em28xx {int v4l2_dev; } ;


 int EINVAL ;
 int s_tuner ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_tuner*) ;

__attribute__((used)) static int radio_s_tuner(struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct em28xx *dev = ((struct em28xx_fh *)priv)->dev;

 if (0 != t->index)
  return -EINVAL;

 v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, s_tuner, t);

 return 0;
}
