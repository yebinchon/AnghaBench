
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
 unsigned char BRDRW ;
 unsigned char BRDRW_ULTRA2 ;
 int CLOCK_PULSE (struct aic7xxx_host*) ;
 unsigned char aic_inb (struct aic7xxx_host*,int ) ;
 int aic_outb (struct aic7xxx_host*,unsigned char,int ) ;

__attribute__((used)) static unsigned char
read_brdctl(struct aic7xxx_host *p)
{
  unsigned char brdctl, value;




  CLOCK_PULSE(p);
  if (p->features & AHC_ULTRA2)
  {
    brdctl = BRDRW_ULTRA2;
    aic_outb(p, brdctl, BRDCTL);
    CLOCK_PULSE(p);
    value = aic_inb(p, BRDCTL);
    CLOCK_PULSE(p);
    return(value);
  }
  brdctl = BRDRW;
  if ( !((p->chip & AHC_CHIPID_MASK) == AHC_AIC7895) ||
        (p->flags & AHC_CHNLB) )
  {
    brdctl |= BRDCS;
  }
  aic_outb(p, brdctl, BRDCTL);
  CLOCK_PULSE(p);
  value = aic_inb(p, BRDCTL);
  CLOCK_PULSE(p);
  aic_outb(p, 0, BRDCTL);
  CLOCK_PULSE(p);
  return (value);
}
