
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base; int isac; int ale; scalar_t__ cfg; scalar_t__ ctrl; int tl; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_2__ hw; } ;


 scalar_t__ ELSA_PCF ;
 scalar_t__ ELSA_PCFPRO ;
 scalar_t__ ELSA_PCMCIA_IPAC ;
 scalar_t__ ELSA_QS1000PCI ;
 scalar_t__ ELSA_QS3000 ;
 scalar_t__ ELSA_QS3000PCI ;
 int IPAC_ATX ;
 int byteout (scalar_t__,int) ;
 int clear_arcofi (struct IsdnCardState*) ;
 int del_timer (int *) ;
 int release_modem (struct IsdnCardState*) ;
 int release_region (scalar_t__,int) ;
 int writereg (int ,int ,int ,int) ;

__attribute__((used)) static void
release_io_elsa(struct IsdnCardState *cs)
{
 int bytecnt = 8;

 del_timer(&cs->hw.elsa.tl);



 if (cs->hw.elsa.ctrl)
  byteout(cs->hw.elsa.ctrl, 0);
 if (cs->subtyp == ELSA_QS1000PCI) {
  byteout(cs->hw.elsa.cfg + 0x4c, 0x01);
  writereg(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_ATX, 0xff);
  bytecnt = 2;
  release_region(cs->hw.elsa.cfg, 0x80);
 }
 if (cs->subtyp == ELSA_QS3000PCI) {
  byteout(cs->hw.elsa.cfg + 0x4c, 0x03);
  writereg(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_ATX, 0xff);
  release_region(cs->hw.elsa.cfg, 0x80);
 }
  if (cs->subtyp == ELSA_PCMCIA_IPAC) {
  writereg(cs->hw.elsa.ale, cs->hw.elsa.isac, IPAC_ATX, 0xff);
  }
 if ((cs->subtyp == ELSA_PCFPRO) ||
  (cs->subtyp == ELSA_QS3000) ||
  (cs->subtyp == ELSA_PCF) ||
  (cs->subtyp == ELSA_QS3000PCI)) {
  bytecnt = 16;



 }
 if (cs->hw.elsa.base)
  release_region(cs->hw.elsa.base, bytecnt);
}
