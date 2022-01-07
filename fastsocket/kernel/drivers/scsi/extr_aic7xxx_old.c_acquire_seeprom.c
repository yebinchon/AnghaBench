
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int dummy; } ;


 int CLOCK_PULSE (struct aic7xxx_host*) ;
 int SEECTL ;
 int SEEMS ;
 int SEERDY ;
 int aic_inb (struct aic7xxx_host*,int ) ;
 int aic_outb (struct aic7xxx_host*,int ,int ) ;

__attribute__((used)) static int
acquire_seeprom(struct aic7xxx_host *p)
{
  aic_outb(p, SEEMS, SEECTL);
  CLOCK_PULSE(p);
  if ((aic_inb(p, SEECTL) & SEERDY) == 0)
  {
    aic_outb(p, 0, SEECTL);
    return (0);
  }
  return (1);
}
