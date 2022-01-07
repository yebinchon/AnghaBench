
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cadet {int lock; scalar_t__ io; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void cadet_setvol(struct cadet *dev, int vol)
{
 mutex_lock(&dev->lock);
 outb(7, dev->io);
 if (vol > 0)
  outb(0x20, dev->io + 1);
 else
  outb(0x00, dev->io + 1);
 mutex_unlock(&dev->lock);
}
