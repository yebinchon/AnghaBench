
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typhoon {int lock; scalar_t__ io; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb_p (int,scalar_t__) ;

__attribute__((used)) static void typhoon_setvol_generic(struct typhoon *dev, int vol)
{
 mutex_lock(&dev->lock);
 vol >>= 14;
 vol &= 3;
 outb_p(vol / 2, dev->io);
 outb_p(vol % 2, dev->io + 2);
 mutex_unlock(&dev->lock);
}
