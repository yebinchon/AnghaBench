
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {scalar_t__ cfg_reg; int ctrl; int tl; scalar_t__ pci_cfg; } ;
struct TYPE_4__ {TYPE_1__ diva; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_2__ hw; } ;


 scalar_t__ DIVA_IPACX_PCI ;
 scalar_t__ DIVA_IPAC_ISA ;
 scalar_t__ DIVA_IPAC_PCI ;
 scalar_t__ DIVA_ISA ;
 int byteout (int ,int ) ;
 int del_timer (int *) ;
 int iounmap (void*) ;
 int release_region (scalar_t__,int) ;

__attribute__((used)) static void
release_io_diva(struct IsdnCardState *cs)
{
 int bytecnt;

 if ((cs->subtyp == DIVA_IPAC_PCI) ||
     (cs->subtyp == DIVA_IPACX_PCI) ) {
  u_int *cfg = (unsigned int *)cs->hw.diva.pci_cfg;

  *cfg = 0;
  *cfg = 2;
  if (cs->hw.diva.cfg_reg)
   iounmap((void *)cs->hw.diva.cfg_reg);
  if (cs->hw.diva.pci_cfg)
   iounmap((void *)cs->hw.diva.pci_cfg);
  return;
 } else if (cs->subtyp != DIVA_IPAC_ISA) {
  del_timer(&cs->hw.diva.tl);
  if (cs->hw.diva.cfg_reg)
   byteout(cs->hw.diva.ctrl, 0);
 }
 if ((cs->subtyp == DIVA_ISA) || (cs->subtyp == DIVA_IPAC_ISA))
  bytecnt = 8;
 else
  bytecnt = 32;
 if (cs->hw.diva.cfg_reg) {
  release_region(cs->hw.diva.cfg_reg, bytecnt);
 }
}
