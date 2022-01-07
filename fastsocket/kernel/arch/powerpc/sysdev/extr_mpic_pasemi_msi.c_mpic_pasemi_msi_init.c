
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mpic {TYPE_1__* irqhost; } ;
struct TYPE_4__ {int msi_check_device; int teardown_msi_irqs; int setup_msi_irqs; } ;
struct TYPE_3__ {int of_node; } ;


 int ENODEV ;
 int WARN_ON (int ) ;
 int mpic_msi_init_allocator (struct mpic*) ;
 struct mpic* msi_mpic ;
 int of_device_is_compatible (int ,char*) ;
 int pasemi_msi_check_device ;
 int pasemi_msi_setup_msi_irqs ;
 int pasemi_msi_teardown_msi_irqs ;
 TYPE_2__ ppc_md ;
 int pr_debug (char*) ;

int mpic_pasemi_msi_init(struct mpic *mpic)
{
 int rc;

 if (!mpic->irqhost->of_node ||
     !of_device_is_compatible(mpic->irqhost->of_node,
         "pasemi,pwrficient-openpic"))
  return -ENODEV;

 rc = mpic_msi_init_allocator(mpic);
 if (rc) {
  pr_debug("pasemi_msi: Error allocating bitmap!\n");
  return rc;
 }

 pr_debug("pasemi_msi: Registering PA Semi MPIC MSI callbacks\n");

 msi_mpic = mpic;
 WARN_ON(ppc_md.setup_msi_irqs);
 ppc_md.setup_msi_irqs = pasemi_msi_setup_msi_irqs;
 ppc_md.teardown_msi_irqs = pasemi_msi_teardown_msi_irqs;
 ppc_md.msi_check_device = pasemi_msi_check_device;

 return 0;
}
