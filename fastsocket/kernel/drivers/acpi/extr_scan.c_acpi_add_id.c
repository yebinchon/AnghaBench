
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_hardware_id {int list; void* id; } ;
struct TYPE_2__ {int ids; } ;
struct acpi_device {TYPE_1__ pnp; } ;


 int GFP_KERNEL ;
 int kfree (struct acpi_hardware_id*) ;
 void* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int strcpy (void*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void acpi_add_id(struct acpi_device *device, const char *dev_id)
{
 struct acpi_hardware_id *id;

 id = kmalloc(sizeof(*id), GFP_KERNEL);
 if (!id)
  return;

 id->id = kmalloc(strlen(dev_id) + 1, GFP_KERNEL);
 if (!id->id) {
  kfree(id);
  return;
 }

 strcpy(id->id, dev_id);
 list_add_tail(&id->list, &device->pnp.ids);
}
