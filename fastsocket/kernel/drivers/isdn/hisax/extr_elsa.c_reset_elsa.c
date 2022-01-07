
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctrl_reg; scalar_t__ cfg; int isac; int ale; scalar_t__ trig; scalar_t__ timer; scalar_t__ ctrl; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_2__ hw; } ;


 int ELSA_ISDN_RESET ;
 scalar_t__ ELSA_PCMCIA_IPAC ;
 scalar_t__ ELSA_QS1000PCI ;
 scalar_t__ ELSA_QS3000PCI ;
 int IPAC_ACFG ;
 int IPAC_AOE ;
 int IPAC_ATX ;
 int IPAC_MASK ;
 int IPAC_PCFG ;
 int IPAC_POTA2 ;
 scalar_t__ TimerRun (struct IsdnCardState*) ;
 int byteout (scalar_t__,int) ;
 int mdelay (int) ;
 int writereg (int ,int ,int ,int) ;

__attribute__((used)) static void
reset_elsa(struct IsdnCardState *cs)
{
 if (cs->hw.elsa.timer) {

  byteout(cs->hw.elsa.timer, 0);
  while (TimerRun(cs));
  cs->hw.elsa.ctrl_reg |= 0x50;
  cs->hw.elsa.ctrl_reg &= ~ELSA_ISDN_RESET;
  byteout(cs->hw.elsa.ctrl, cs->hw.elsa.ctrl_reg);

  byteout(cs->hw.elsa.timer, 0);
  while (TimerRun(cs));
  cs->hw.elsa.ctrl_reg |= ELSA_ISDN_RESET;
  byteout(cs->hw.elsa.ctrl, cs->hw.elsa.ctrl_reg);

  byteout(cs->hw.elsa.timer, 0);
  while (TimerRun(cs));
  if (cs->hw.elsa.trig)
   byteout(cs->hw.elsa.trig, 0xff);
 }
 if ((cs->subtyp == ELSA_QS1000PCI) || (cs->subtyp == ELSA_QS3000PCI) || (cs->subtyp == ELSA_PCMCIA_IPAC)) {
  writereg(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_POTA2, 0x20);
  mdelay(10);
  writereg(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_POTA2, 0x00);
  writereg(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_MASK, 0xc0);
  mdelay(10);
  if (cs->subtyp != ELSA_PCMCIA_IPAC) {
   writereg(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_ACFG, 0x0);
   writereg(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_AOE, 0x3c);
  } else {
   writereg(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_PCFG, 0x10);
   writereg(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_ACFG, 0x4);
   writereg(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_AOE, 0xf8);
  }
  writereg(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_ATX, 0xff);
  if (cs->subtyp == ELSA_QS1000PCI)
   byteout(cs->hw.elsa.cfg + 0x4c, 0x41);
  else if (cs->subtyp == ELSA_QS3000PCI)
   byteout(cs->hw.elsa.cfg + 0x4c, 0x43);
 }
}
