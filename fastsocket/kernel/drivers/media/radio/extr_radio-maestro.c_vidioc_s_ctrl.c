
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct v4l2_control {int id; int value; } ;
struct maestro {int lock; int muted; scalar_t__ io; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ IO_MASK ;
 scalar_t__ STR_WREN ;

 scalar_t__ inw (scalar_t__) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outw (scalar_t__,scalar_t__) ;
 int udelay (int) ;
 struct maestro* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
     struct v4l2_control *ctrl)
{
 struct maestro *dev = video_drvdata(file);
 u16 io = dev->io;
 u16 omask;

 switch (ctrl->id) {
 case 128:
  mutex_lock(&dev->lock);
  omask = inw(io + IO_MASK);
  outw(~STR_WREN, io + IO_MASK);
  dev->muted = ctrl->value;
  outw(dev->muted ? STR_WREN : 0, io);
  udelay(4);
  outw(omask, io + IO_MASK);
  msleep(125);
  mutex_unlock(&dev->lock);
  return 0;
 }
 return -EINVAL;
}
