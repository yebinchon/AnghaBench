
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctrl_reg; scalar_t__ ctrl; scalar_t__ pci_cfg; int cfg_reg; int isac; int isac_adr; } ;
struct TYPE_4__ {TYPE_1__ diva; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_2__ hw; } ;


 scalar_t__ DIVA_IPACX_PCI ;
 scalar_t__ DIVA_IPAC_ISA ;
 scalar_t__ DIVA_IPAC_PCI ;
 scalar_t__ DIVA_ISA ;
 int DIVA_ISA_LED_A ;
 int DIVA_PCI_LED_A ;
 int DIVA_RESET ;
 int IPACX_MASK ;
 int IPAC_MASK ;
 int IPAC_POTA2 ;
 int MemWriteISAC_IPACX (struct IsdnCardState*,int ,int) ;
 scalar_t__ PITA_MISC_REG ;
 unsigned int PITA_PARA_MPX_MODE ;
 unsigned int PITA_PARA_SOFTRESET ;
 unsigned int PITA_SER_SOFTRESET ;
 int byteout (scalar_t__,int) ;
 int mdelay (int) ;
 int memwritereg (int ,int ,int) ;
 int writereg (int ,int ,int ,int) ;

__attribute__((used)) static void
reset_diva(struct IsdnCardState *cs)
{
 if (cs->subtyp == DIVA_IPAC_ISA) {
  writereg(cs->hw.diva.isac_adr, cs->hw.diva.isac, IPAC_POTA2, 0x20);
  mdelay(10);
  writereg(cs->hw.diva.isac_adr, cs->hw.diva.isac, IPAC_POTA2, 0x00);
  mdelay(10);
  writereg(cs->hw.diva.isac_adr, cs->hw.diva.isac, IPAC_MASK, 0xc0);
 } else if (cs->subtyp == DIVA_IPAC_PCI) {
  unsigned int *ireg = (unsigned int *)(cs->hw.diva.pci_cfg +
     PITA_MISC_REG);
  *ireg = PITA_PARA_SOFTRESET | PITA_PARA_MPX_MODE;
  mdelay(10);
  *ireg = PITA_PARA_MPX_MODE;
  mdelay(10);
  memwritereg(cs->hw.diva.cfg_reg, IPAC_MASK, 0xc0);
 } else if (cs->subtyp == DIVA_IPACX_PCI) {
  unsigned int *ireg = (unsigned int *)(cs->hw.diva.pci_cfg +
     PITA_MISC_REG);
  *ireg = PITA_PARA_SOFTRESET | PITA_PARA_MPX_MODE;
  mdelay(10);
  *ireg = PITA_PARA_MPX_MODE | PITA_SER_SOFTRESET;
  mdelay(10);
  MemWriteISAC_IPACX(cs, IPACX_MASK, 0xff);
 } else {
  cs->hw.diva.ctrl_reg = 0;
  byteout(cs->hw.diva.ctrl, cs->hw.diva.ctrl_reg);
  mdelay(10);
  cs->hw.diva.ctrl_reg |= DIVA_RESET;
  byteout(cs->hw.diva.ctrl, cs->hw.diva.ctrl_reg);
  mdelay(10);
  if (cs->subtyp == DIVA_ISA)
   cs->hw.diva.ctrl_reg |= DIVA_ISA_LED_A;
  else {

   byteout(cs->hw.diva.pci_cfg + 0x69, 9);
   cs->hw.diva.ctrl_reg |= DIVA_PCI_LED_A;
  }
  byteout(cs->hw.diva.ctrl, cs->hw.diva.ctrl_reg);
 }
}
