
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int pdev; } ;


 int PCI_D3hot ;
 int WOL_ENABLE ;
 int pci_set_power_state (int ,int ) ;
 int pci_wake_from_d3 (int ,int ) ;
 int tg3_flag (struct tg3*,int ) ;
 int tg3_power_down_prepare (struct tg3*) ;

__attribute__((used)) static void tg3_power_down(struct tg3 *tp)
{
 tg3_power_down_prepare(tp);

 pci_wake_from_d3(tp->pdev, tg3_flag(tp, WOL_ENABLE));
 pci_set_power_state(tp->pdev, PCI_D3hot);
}
