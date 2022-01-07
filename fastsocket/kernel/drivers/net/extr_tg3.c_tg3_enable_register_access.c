
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int misc_host_ctrl; int pdev; } ;


 int TG3PCI_MISC_HOST_CTRL ;
 int pci_write_config_dword (int ,int ,int ) ;

__attribute__((used)) static void tg3_enable_register_access(struct tg3 *tp)
{




 pci_write_config_dword(tp->pdev,
          TG3PCI_MISC_HOST_CTRL, tp->misc_host_ctrl);
}
