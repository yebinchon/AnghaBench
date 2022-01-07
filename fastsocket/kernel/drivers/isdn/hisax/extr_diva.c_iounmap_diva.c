
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pci_cfg; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ diva; } ;
struct IsdnCardState {scalar_t__ subtyp; TYPE_2__ hw; } ;


 scalar_t__ DIVA_IPACX_PCI ;
 scalar_t__ DIVA_IPAC_PCI ;
 int iounmap (void*) ;

__attribute__((used)) static void
iounmap_diva(struct IsdnCardState *cs)
{
 if ((cs->subtyp == DIVA_IPAC_PCI) || (cs->subtyp == DIVA_IPACX_PCI)) {
  if (cs->hw.diva.cfg_reg) {
   iounmap((void *)cs->hw.diva.cfg_reg);
   cs->hw.diva.cfg_reg = 0;
  }
  if (cs->hw.diva.pci_cfg) {
   iounmap((void *)cs->hw.diva.pci_cfg);
   cs->hw.diva.pci_cfg = 0;
  }
 }

 return;
}
