
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int pci_cmd; int pdev; } ;


 int PCI_COMMAND ;
 int pci_read_config_word (int ,int ,int *) ;

__attribute__((used)) static void tg3_save_pci_state(struct tg3 *tp)
{
 pci_read_config_word(tp->pdev, PCI_COMMAND, &tp->pci_cmd);
}
