
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int dummy; } ;


 int CLRATNO ;
 int CLRBRKADRINT ;
 int CLRBUSFREE ;
 int CLRINT ;
 int CLRPARERR ;
 int CLRPHASECHG ;
 int CLRREQINIT ;
 int CLRSCSIINT ;
 int CLRSCSIPERR ;
 int CLRSCSIRSTI ;
 int CLRSELDI ;
 int CLRSELDO ;
 int CLRSELINGO ;
 int CLRSELTIMEO ;
 int CLRSEQINT ;
 int CLRSINT0 ;
 int CLRSINT1 ;
 int aic_outb (struct aic7xxx_host*,int,int ) ;

__attribute__((used)) static void
aic7xxx_clear_intstat(struct aic7xxx_host *p)
{

  aic_outb(p, CLRSELDO | CLRSELDI | CLRSELINGO, CLRSINT0);
  aic_outb(p, CLRSELTIMEO | CLRATNO | CLRSCSIRSTI | CLRBUSFREE | CLRSCSIPERR |
       CLRPHASECHG | CLRREQINIT, CLRSINT1);
  aic_outb(p, CLRSCSIINT | CLRSEQINT | CLRBRKADRINT | CLRPARERR, CLRINT);
}
