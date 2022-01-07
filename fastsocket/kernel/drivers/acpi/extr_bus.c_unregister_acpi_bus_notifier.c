
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int acpi_bus_notify_list ;
 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;

void unregister_acpi_bus_notifier(struct notifier_block *nb)
{
 blocking_notifier_chain_unregister(&acpi_bus_notify_list, nb);
}
