
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int acpi_chain_head ;
 int blocking_notifier_chain_register (int *,struct notifier_block*) ;

int register_acpi_notifier(struct notifier_block *nb)
{
 return blocking_notifier_chain_register(&acpi_chain_head, nb);
}
