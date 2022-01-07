
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_syncrate {unsigned int sxfr_ultra2; unsigned int period; unsigned int sxfr; int ** rate; } ;
struct aic7xxx_host {int features; } ;


 unsigned int AHC_SYNCRATE_CRC ;
 int AHC_ULTRA2 ;
 unsigned int SXFR ;
 unsigned int SXFR_ULTRA2 ;
 unsigned int ULTRA_SXFR ;
 struct aic7xxx_syncrate* aic7xxx_syncrates ;

__attribute__((used)) static unsigned int
aic7xxx_find_period(struct aic7xxx_host *p, unsigned int scsirate,
  unsigned int maxsync)
{
  struct aic7xxx_syncrate *syncrate;

  if (p->features & AHC_ULTRA2)
  {
    scsirate &= SXFR_ULTRA2;
  }
  else
  {
    scsirate &= SXFR;
  }

  syncrate = &aic7xxx_syncrates[maxsync];
  while (syncrate->rate[0] != ((void*)0))
  {
    if (p->features & AHC_ULTRA2)
    {
      if (syncrate->sxfr_ultra2 == 0)
        break;
      else if (scsirate == syncrate->sxfr_ultra2)
        return (syncrate->period);
      else if (scsirate == (syncrate->sxfr_ultra2 & ~AHC_SYNCRATE_CRC))
        return (syncrate->period);
    }
    else if (scsirate == (syncrate->sxfr & ~ULTRA_SXFR))
    {
      return (syncrate->period);
    }
    syncrate++;
  }
  return (0);
}
