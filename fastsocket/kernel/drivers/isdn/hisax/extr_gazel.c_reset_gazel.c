
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ gazel; } ;
struct IsdnCardState {int subtyp; TYPE_2__ hw; } ;


 int HZDELAY (int) ;
 scalar_t__ INT_HSCX_EN ;
 scalar_t__ INT_IPAC_EN ;
 scalar_t__ INT_ISAC_EN ;
 scalar_t__ INT_PCI_EN ;
 int IPAC_ACFG ;
 int IPAC_AOE ;
 int IPAC_CONF ;
 int IPAC_MASK ;
 int IPAC_POTA2 ;
 int PLX_CNTRL ;
 int PLX_INCSR ;




 unsigned long RESET_9050 ;
 unsigned long RESET_GAZEL ;
 int WriteISAC (struct IsdnCardState*,int ,int) ;
 unsigned long inl (int ) ;
 int outb (scalar_t__,int ) ;
 int outl (unsigned long,int ) ;
 int writereg (unsigned long,int ,int) ;

__attribute__((used)) static int
reset_gazel(struct IsdnCardState *cs)
{
 unsigned long plxcntrl, addr = cs->hw.gazel.cfg_reg;

 switch (cs->subtyp) {
  case 131:
   writereg(addr, 0, 0);
   HZDELAY(10);
   writereg(addr, 0, 1);
   HZDELAY(2);
   break;
  case 130:
   plxcntrl = inl(addr + PLX_CNTRL);
   plxcntrl |= (RESET_9050 + RESET_GAZEL);
   outl(plxcntrl, addr + PLX_CNTRL);
   plxcntrl &= ~(RESET_9050 + RESET_GAZEL);
   HZDELAY(4);
   outl(plxcntrl, addr + PLX_CNTRL);
   HZDELAY(10);
   outb(INT_ISAC_EN + INT_HSCX_EN + INT_PCI_EN, addr + PLX_INCSR);
   break;
  case 128:
   plxcntrl = inl(addr + PLX_CNTRL);
   plxcntrl |= (RESET_9050 + RESET_GAZEL);
   outl(plxcntrl, addr + PLX_CNTRL);
   plxcntrl &= ~(RESET_9050 + RESET_GAZEL);
   WriteISAC(cs, IPAC_POTA2 - 0x80, 0x20);
   HZDELAY(4);
   outl(plxcntrl, addr + PLX_CNTRL);
   HZDELAY(10);
   WriteISAC(cs, IPAC_POTA2 - 0x80, 0x00);
   WriteISAC(cs, IPAC_ACFG - 0x80, 0xff);
   WriteISAC(cs, IPAC_AOE - 0x80, 0x0);
   WriteISAC(cs, IPAC_MASK - 0x80, 0xff);
   WriteISAC(cs, IPAC_CONF - 0x80, 0x1);
   outb(INT_IPAC_EN + INT_PCI_EN, addr + PLX_INCSR);
   WriteISAC(cs, IPAC_MASK - 0x80, 0xc0);
   break;
  case 129:
   WriteISAC(cs, IPAC_POTA2 - 0x80, 0x20);
   HZDELAY(4);
   WriteISAC(cs, IPAC_POTA2 - 0x80, 0x00);
   WriteISAC(cs, IPAC_ACFG - 0x80, 0xff);
   WriteISAC(cs, IPAC_AOE - 0x80, 0x0);
   WriteISAC(cs, IPAC_MASK - 0x80, 0xff);
   WriteISAC(cs, IPAC_CONF - 0x80, 0x1);
   WriteISAC(cs, IPAC_MASK - 0x80, 0xc0);
   break;
 }
 return (0);
}
