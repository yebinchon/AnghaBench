
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ioremap {int virt; int phys; int refcount; } ;


 int acpi_unmap (int ,int ) ;
 int kfree (struct acpi_ioremap*) ;
 int synchronize_rcu () ;

__attribute__((used)) static void acpi_os_map_cleanup(struct acpi_ioremap *map)
{
 if (!map->refcount) {
  synchronize_rcu();
  acpi_unmap(map->phys, map->virt);
  kfree(map);
 }
}
