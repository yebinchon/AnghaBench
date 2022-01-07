
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terratec {int curvol; scalar_t__ muted; } ;


 int tt_write_vol (struct terratec*,int) ;

__attribute__((used)) static int tt_setvol(struct terratec *tt, int vol)
{
 if (vol == tt->curvol) {
  if (tt->muted) {
   tt->muted = 0;
   tt_write_vol(tt, vol);
  }
  return 0;
 }

 if (vol == 0) {
  tt_write_vol(tt, 0);
  tt->curvol = vol;
  return 0;
 }

 tt->muted = 0;
 tt_write_vol(tt, vol);
 tt->curvol = vol;
 return 0;
}
