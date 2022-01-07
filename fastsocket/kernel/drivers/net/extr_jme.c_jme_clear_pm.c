
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_adapter {int reg_pmcs; int pdev; } ;


 int JME_PMCS ;
 int PCI_D0 ;
 int jwrite32 (struct jme_adapter*,int ,int) ;
 int pci_enable_wake (int ,int ,int) ;
 int pci_set_power_state (int ,int ) ;

__attribute__((used)) static inline void
jme_clear_pm(struct jme_adapter *jme)
{
 jwrite32(jme, JME_PMCS, 0xFFFF0000 | jme->reg_pmcs);
 pci_set_power_state(jme->pdev, PCI_D0);
 pci_enable_wake(jme->pdev, PCI_D0, 0);
}
