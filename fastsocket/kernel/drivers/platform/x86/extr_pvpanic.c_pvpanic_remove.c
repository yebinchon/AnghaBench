
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;


 int atomic_notifier_chain_unregister (int *,int *) ;
 int panic_notifier_list ;
 int pvpanic_panic_nb ;

__attribute__((used)) static int pvpanic_remove(struct acpi_device *device, int type)
{

 atomic_notifier_chain_unregister(&panic_notifier_list,
      &pvpanic_panic_nb);
 return 0;
}
