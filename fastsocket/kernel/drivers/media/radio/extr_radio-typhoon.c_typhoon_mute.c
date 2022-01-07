
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typhoon {int muted; int mutefreq; } ;


 int typhoon_setfreq_generic (struct typhoon*,int ) ;
 int typhoon_setvol_generic (struct typhoon*,int ) ;

__attribute__((used)) static void typhoon_mute(struct typhoon *dev)
{
 if (dev->muted == 1)
  return;
 typhoon_setvol_generic(dev, 0);
 typhoon_setfreq_generic(dev, dev->mutefreq);
 dev->muted = 1;
}
