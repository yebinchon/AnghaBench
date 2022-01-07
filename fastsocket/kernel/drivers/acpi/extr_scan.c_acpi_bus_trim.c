
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct acpi_device {struct acpi_device* parent; int * handle; } ;
typedef int acpi_status ;
typedef int acpi_object_type ;
typedef int * acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_ANY ;
 scalar_t__ acpi_bus_get_device (int *,struct acpi_device**) ;
 int acpi_bus_remove (struct acpi_device*,int) ;
 int acpi_get_next_object (int ,int *,int *,int **) ;
 int acpi_get_parent (int *,int **) ;
 int acpi_get_type (int *,int *) ;

int acpi_bus_trim(struct acpi_device *start, int rmdevice)
{
 acpi_status status;
 struct acpi_device *parent, *child;
 acpi_handle phandle, chandle;
 acpi_object_type type;
 u32 level = 1;
 int err = 0;

 parent = start;
 phandle = start->handle;
 child = chandle = ((void*)0);

 while ((level > 0) && parent && (!err)) {
  status = acpi_get_next_object(ACPI_TYPE_ANY, phandle,
           chandle, &chandle);




  if (ACPI_FAILURE(status)) {
   level--;
   chandle = phandle;
   acpi_get_parent(phandle, &phandle);
   child = parent;
   parent = parent->parent;

   if (level == 0)
    err = acpi_bus_remove(child, rmdevice);
   else
    err = acpi_bus_remove(child, 1);

   continue;
  }

  status = acpi_get_type(chandle, &type);
  if (ACPI_FAILURE(status)) {
   continue;
  }




  if (acpi_bus_get_device(chandle, &child) == 0) {
   level++;
   phandle = chandle;
   chandle = ((void*)0);
   parent = child;
  }
  continue;
 }
 return err;
}
