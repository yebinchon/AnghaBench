
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typhoon {unsigned long curfreq; } ;


 int typhoon_setfreq_generic (struct typhoon*,unsigned long) ;

__attribute__((used)) static int typhoon_setfreq(struct typhoon *dev, unsigned long frequency)
{
 typhoon_setfreq_generic(dev, frequency);
 dev->curfreq = frequency;
 return 0;
}
