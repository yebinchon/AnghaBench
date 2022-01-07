
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpic {int dummy; } ;
struct TYPE_2__ {int msi_check_device; int teardown_msi_irqs; int setup_msi_irqs; } ;


 int BUG_ON (struct mpic*) ;
 int WARN_ON (int ) ;
 int mpic_msi_init_allocator (struct mpic*) ;
 struct mpic* msi_mpic ;
 TYPE_1__ ppc_md ;
 int pr_debug (char*) ;
 int u3msi_msi_check_device ;
 int u3msi_setup_msi_irqs ;
 int u3msi_teardown_msi_irqs ;

int mpic_u3msi_init(struct mpic *mpic)
{
 int rc;

 rc = mpic_msi_init_allocator(mpic);
 if (rc) {
  pr_debug("u3msi: Error allocating bitmap!\n");
  return rc;
 }

 pr_debug("u3msi: Registering MPIC U3 MSI callbacks.\n");

 BUG_ON(msi_mpic);
 msi_mpic = mpic;

 WARN_ON(ppc_md.setup_msi_irqs);
 ppc_md.setup_msi_irqs = u3msi_setup_msi_irqs;
 ppc_md.teardown_msi_irqs = u3msi_teardown_msi_irqs;
 ppc_md.msi_check_device = u3msi_msi_check_device;

 return 0;
}
