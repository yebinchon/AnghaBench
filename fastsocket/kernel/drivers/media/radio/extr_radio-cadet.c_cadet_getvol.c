
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cadet {int lock; scalar_t__ io; } ;


 int inb (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int cadet_getvol(struct cadet *dev)
{
 int ret = 0;

 mutex_lock(&dev->lock);

 outb(7, dev->io);
 if ((inb(dev->io + 1) & 0x20) != 0)
  ret = 0xffff;

 mutex_unlock(&dev->lock);
 return ret;
}
