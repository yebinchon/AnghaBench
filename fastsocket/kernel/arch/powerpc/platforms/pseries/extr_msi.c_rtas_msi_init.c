
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pci_irq_fixup; int msi_check_device; int teardown_msi_irqs; int setup_msi_irqs; } ;


 scalar_t__ RTAS_UNKNOWN_SERVICE ;
 int WARN_ON (int ) ;
 scalar_t__ change_token ;
 TYPE_1__ ppc_md ;
 int pr_debug (char*) ;
 scalar_t__ query_token ;
 int rtas_msi_check_device ;
 int rtas_msi_pci_irq_fixup ;
 int rtas_setup_msi_irqs ;
 int rtas_teardown_msi_irqs ;
 scalar_t__ rtas_token (char*) ;

__attribute__((used)) static int rtas_msi_init(void)
{
 query_token = rtas_token("ibm,query-interrupt-source-number");
 change_token = rtas_token("ibm,change-msi");

 if ((query_token == RTAS_UNKNOWN_SERVICE) ||
   (change_token == RTAS_UNKNOWN_SERVICE)) {
  pr_debug("rtas_msi: no RTAS tokens, no MSI support.\n");
  return -1;
 }

 pr_debug("rtas_msi: Registering RTAS MSI callbacks.\n");

 WARN_ON(ppc_md.setup_msi_irqs);
 ppc_md.setup_msi_irqs = rtas_setup_msi_irqs;
 ppc_md.teardown_msi_irqs = rtas_teardown_msi_irqs;
 ppc_md.msi_check_device = rtas_msi_check_device;

 WARN_ON(ppc_md.pci_irq_fixup);
 ppc_md.pci_irq_fixup = rtas_msi_pci_irq_fixup;

 return 0;
}
