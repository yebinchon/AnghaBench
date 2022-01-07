
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int isac; int adr; } ;
struct TYPE_4__ {TYPE_1__ asus; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_2__ hw; } ;


 scalar_t__ ASUS_IPAC ;
 int ASUS_RESET ;
 int IPAC_ACFG ;
 int IPAC_AOE ;
 int IPAC_CONF ;
 int IPAC_MASK ;
 int IPAC_PCFG ;
 int IPAC_POTA2 ;
 int byteout (int ,int ) ;
 int mdelay (int) ;
 int writereg (int ,int ,int ,int) ;

__attribute__((used)) static void
reset_asuscom(struct IsdnCardState *cs)
{
 if (cs->subtyp == ASUS_IPAC)
  writereg(cs->hw.asus.adr, cs->hw.asus.isac, IPAC_POTA2, 0x20);
 else
  byteout(cs->hw.asus.adr, ASUS_RESET);
 mdelay(10);
 if (cs->subtyp == ASUS_IPAC)
  writereg(cs->hw.asus.adr, cs->hw.asus.isac, IPAC_POTA2, 0x0);
 else
  byteout(cs->hw.asus.adr, 0);
 mdelay(10);
 if (cs->subtyp == ASUS_IPAC) {
  writereg(cs->hw.asus.adr, cs->hw.asus.isac, IPAC_CONF, 0x0);
  writereg(cs->hw.asus.adr, cs->hw.asus.isac, IPAC_ACFG, 0xff);
  writereg(cs->hw.asus.adr, cs->hw.asus.isac, IPAC_AOE, 0x0);
  writereg(cs->hw.asus.adr, cs->hw.asus.isac, IPAC_MASK, 0xc0);
  writereg(cs->hw.asus.adr, cs->hw.asus.isac, IPAC_PCFG, 0x12);
 }
}
