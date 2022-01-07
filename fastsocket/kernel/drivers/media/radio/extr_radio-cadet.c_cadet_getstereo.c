
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cadet {scalar_t__ curtuner; int lock; scalar_t__ io; } ;


 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int inb (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int cadet_getstereo(struct cadet *dev)
{
 int ret = V4L2_TUNER_SUB_MONO;

 if (dev->curtuner != 0)
  return V4L2_TUNER_SUB_MONO;

 mutex_lock(&dev->lock);
 outb(7, dev->io);
 if ((inb(dev->io + 1) & 0x40) == 0)
  ret = V4L2_TUNER_SUB_STEREO;
 mutex_unlock(&dev->lock);
 return ret;
}
