
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_chipcommon {int dev; } ;


 int SSB_CLKMODE_SLOW ;
 int ssb_chipco_set_clockmode (struct ssb_chipcommon*,int ) ;

void ssb_chipco_suspend(struct ssb_chipcommon *cc)
{
 if (!cc->dev)
  return;
 ssb_chipco_set_clockmode(cc, SSB_CLKMODE_SLOW);
}
