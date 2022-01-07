
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int features; int pause; } ;


 int AHC_ULTRA2 ;
 int CCSCBCTL ;
 int HCNTRL ;
 int PAUSE ;
 int aic_inb (struct aic7xxx_host*,int ) ;
 int aic_outb (struct aic7xxx_host*,int ,int ) ;

__attribute__((used)) static void
pause_sequencer(struct aic7xxx_host *p)
{
  aic_outb(p, p->pause, HCNTRL);
  while ((aic_inb(p, HCNTRL) & PAUSE) == 0)
  {
    ;
  }
  if(p->features & AHC_ULTRA2)
  {
    aic_inb(p, CCSCBCTL);
  }
}
