
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int dummy; } ;


 int CLOCK_PULSE (struct aic7xxx_host*) ;
 int SEECTL ;
 int aic_outb (struct aic7xxx_host*,int ,int ) ;

__attribute__((used)) static void
release_seeprom(struct aic7xxx_host *p)
{



  CLOCK_PULSE(p);
  aic_outb(p, 0, SEECTL);
}
