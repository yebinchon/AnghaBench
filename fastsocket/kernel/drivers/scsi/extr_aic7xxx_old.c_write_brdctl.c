
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int features; int chip; int flags; } ;


 int AHC_AIC7895 ;
 int AHC_CHIPID_MASK ;
 int AHC_CHNLB ;
 int AHC_ULTRA2 ;
 unsigned char BRDCS ;
 int BRDCTL ;
 unsigned char BRDSTB ;
 unsigned char BRDSTB_ULTRA2 ;
 int CLOCK_PULSE (struct aic7xxx_host*) ;
 int aic_outb (struct aic7xxx_host*,unsigned char,int ) ;
 int read_brdctl (struct aic7xxx_host*) ;

__attribute__((used)) static void
write_brdctl(struct aic7xxx_host *p, unsigned char value)
{
  unsigned char brdctl;




  CLOCK_PULSE(p);
  if (p->features & AHC_ULTRA2)
  {
    brdctl = value;
    aic_outb(p, brdctl, BRDCTL);
    CLOCK_PULSE(p);
    brdctl |= BRDSTB_ULTRA2;
    aic_outb(p, brdctl, BRDCTL);
    CLOCK_PULSE(p);
    brdctl &= ~BRDSTB_ULTRA2;
    aic_outb(p, brdctl, BRDCTL);
    CLOCK_PULSE(p);
    read_brdctl(p);
    CLOCK_PULSE(p);
  }
  else
  {
    brdctl = BRDSTB;
    if ( !((p->chip & AHC_CHIPID_MASK) == AHC_AIC7895) ||
          (p->flags & AHC_CHNLB) )
    {
      brdctl |= BRDCS;
    }
    brdctl = BRDSTB | BRDCS;
    aic_outb(p, brdctl, BRDCTL);
    CLOCK_PULSE(p);
    brdctl |= value;
    aic_outb(p, brdctl, BRDCTL);
    CLOCK_PULSE(p);
    brdctl &= ~BRDSTB;
    aic_outb(p, brdctl, BRDCTL);
    CLOCK_PULSE(p);
    brdctl &= ~BRDCS;
    aic_outb(p, brdctl, BRDCTL);
    CLOCK_PULSE(p);
  }
}
