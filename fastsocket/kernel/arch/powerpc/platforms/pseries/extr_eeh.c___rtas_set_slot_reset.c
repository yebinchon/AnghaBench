
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {int node; } ;


 int EEH_MODE_ISOLATED ;
 int PCI_BUS_RST_HOLD_TIME_MSEC ;
 int PCI_BUS_SETTLE_TIME_MSEC ;
 int eeh_clear_slot (int ,int ) ;
 int eeh_set_pe_freset (int ,unsigned int*) ;
 int msleep (int ) ;
 int rtas_pci_slot_reset (struct pci_dn*,int) ;

__attribute__((used)) static void __rtas_set_slot_reset(struct pci_dn *pdn)
{
 unsigned int freset = 0;







 eeh_set_pe_freset(pdn->node, &freset);

 if (freset)
  rtas_pci_slot_reset(pdn, 3);
 else
  rtas_pci_slot_reset(pdn, 1);





 msleep (250);




 eeh_clear_slot (pdn->node, EEH_MODE_ISOLATED);

 rtas_pci_slot_reset (pdn, 0);





 msleep (1800);
}
