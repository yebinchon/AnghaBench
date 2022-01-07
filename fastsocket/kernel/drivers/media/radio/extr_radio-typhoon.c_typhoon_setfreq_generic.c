
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typhoon {int lock; scalar_t__ io; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb_p (unsigned long,scalar_t__) ;

__attribute__((used)) static int typhoon_setfreq_generic(struct typhoon *dev,
       unsigned long frequency)
{
 unsigned long outval;
 unsigned long x;
 mutex_lock(&dev->lock);
 x = frequency / 160;
 outval = (x * x + 2500) / 5000;
 outval = (outval * x + 5000) / 10000;
 outval -= (10 * x * x + 10433) / 20866;
 outval += 4 * x - 11505;

 outb_p((outval >> 8) & 0x01, dev->io + 4);
 outb_p(outval >> 9, dev->io + 6);
 outb_p(outval & 0xff, dev->io + 8);
 mutex_unlock(&dev->lock);

 return 0;
}
