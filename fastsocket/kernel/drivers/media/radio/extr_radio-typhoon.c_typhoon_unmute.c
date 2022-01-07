
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typhoon {scalar_t__ muted; int curvol; int curfreq; } ;


 int typhoon_setfreq_generic (struct typhoon*,int ) ;
 int typhoon_setvol_generic (struct typhoon*,int ) ;

__attribute__((used)) static void typhoon_unmute(struct typhoon *dev)
{
 if (dev->muted == 0)
  return;
 typhoon_setfreq_generic(dev, dev->curfreq);
 typhoon_setvol_generic(dev, dev->curvol);
 dev->muted = 0;
}
