
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txxon; int txxoff; int modem; } ;
struct stlport {TYPE_1__ stats; int istate; } ;


 int ASYI_TXFLOWED ;
 int CIR ;


 unsigned char CIR_SUBTYPEMASK ;

 int CR_BREAKRESET ;
 int IPR ;
 unsigned char IPR_DCDCHANGE ;
 int SCCR ;
 int XISR ;
 unsigned char XISR_RXXOFFGOT ;
 unsigned char XISR_RXXONGOT ;
 int clear_bit (int ,int *) ;
 int pr_debug (char*,struct stlport*,unsigned int) ;
 int set_bit (int ,int *) ;
 int stl_cd_change (struct stlport*) ;
 unsigned char stl_sc26198getglobreg (struct stlport*,int ) ;
 unsigned char stl_sc26198getreg (struct stlport*,int ) ;
 int stl_sc26198rxbadchars (struct stlport*) ;
 int stl_sc26198setreg (struct stlport*,int ,int ) ;

__attribute__((used)) static void stl_sc26198otherisr(struct stlport *portp, unsigned int iack)
{
 unsigned char cir, ipr, xisr;

 pr_debug("stl_sc26198otherisr(portp=%p,iack=%x)\n", portp, iack);

 cir = stl_sc26198getglobreg(portp, CIR);

 switch (cir & CIR_SUBTYPEMASK) {
 case 129:
  ipr = stl_sc26198getreg(portp, IPR);
  if (ipr & IPR_DCDCHANGE) {
   stl_cd_change(portp);
   portp->stats.modem++;
  }
  break;
 case 128:
  xisr = stl_sc26198getreg(portp, XISR);
  if (xisr & XISR_RXXONGOT) {
   set_bit(ASYI_TXFLOWED, &portp->istate);
   portp->stats.txxoff++;
  }
  if (xisr & XISR_RXXOFFGOT) {
   clear_bit(ASYI_TXFLOWED, &portp->istate);
   portp->stats.txxon++;
  }
  break;
 case 130:
  stl_sc26198setreg(portp, SCCR, CR_BREAKRESET);
  stl_sc26198rxbadchars(portp);
  break;
 default:
  break;
 }
}
