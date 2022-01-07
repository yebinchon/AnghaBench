
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int dummy; } ;


 int BRDCS ;
 int BRDCTL ;
 unsigned char BRDDAT5 ;
 unsigned char BRDDAT6 ;
 int BRDRW ;
 int CLOCK_PULSE (struct aic7xxx_host*) ;
 int EEPROM ;
 int SPIOCAP ;
 int aic_inb (struct aic7xxx_host*,int ) ;
 int aic_outb (struct aic7xxx_host*,int,int ) ;

__attribute__((used)) static void
aic785x_cable_detect(struct aic7xxx_host *p, int *int_50,
    int *ext_present, int *eeprom)
{
  unsigned char brdctl;

  aic_outb(p, BRDRW | BRDCS, BRDCTL);
  CLOCK_PULSE(p);
  aic_outb(p, 0, BRDCTL);
  CLOCK_PULSE(p);
  brdctl = aic_inb(p, BRDCTL);
  CLOCK_PULSE(p);
  *int_50 = !(brdctl & BRDDAT5);
  *ext_present = !(brdctl & BRDDAT6);
  *eeprom = (aic_inb(p, SPIOCAP) & EEPROM);
}
