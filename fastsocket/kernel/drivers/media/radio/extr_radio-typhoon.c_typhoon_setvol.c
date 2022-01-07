
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typhoon {int curvol; scalar_t__ muted; } ;


 int typhoon_mute (struct typhoon*) ;
 int typhoon_setvol_generic (struct typhoon*,int) ;
 int typhoon_unmute (struct typhoon*) ;

__attribute__((used)) static int typhoon_setvol(struct typhoon *dev, int vol)
{
 if (dev->muted && vol != 0) {
  dev->curvol = vol;
  typhoon_unmute(dev);
  return 0;
 }
 if (vol == dev->curvol)
  return 0;

 if (vol == 0) {
  typhoon_mute(dev);
  dev->curvol = vol;
  return 0;
 }
 typhoon_setvol_generic(dev, vol);
 dev->curvol = vol;
 return 0;
}
