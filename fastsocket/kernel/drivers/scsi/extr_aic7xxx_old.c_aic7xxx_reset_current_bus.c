
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int features; } ;


 int AHC_ULTRA2 ;
 int ENSCSIRST ;
 int SCSIRSTO ;
 int SCSISEQ ;
 int SIMODE1 ;
 int aic7xxx_clear_intstat (struct aic7xxx_host*) ;
 int aic_inb (struct aic7xxx_host*,int ) ;
 int aic_outb (struct aic7xxx_host*,int,int ) ;
 int mdelay (int) ;

__attribute__((used)) static void
aic7xxx_reset_current_bus(struct aic7xxx_host *p)
{


  aic_outb(p, aic_inb(p, SIMODE1) & ~ENSCSIRST, SIMODE1);
  aic_outb(p, aic_inb(p, SCSISEQ) | SCSIRSTO, SCSISEQ);
  while ( (aic_inb(p, SCSISEQ) & SCSIRSTO) == 0)
    mdelay(5);






  if (p->features & AHC_ULTRA2)
    mdelay(250);
  else
    mdelay(50);


  aic_outb(p, 0, SCSISEQ);
  mdelay(10);

  aic7xxx_clear_intstat(p);

  aic_outb(p, aic_inb(p, SIMODE1) | ENSCSIRST, SIMODE1);

}
