
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int * acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ENODEV ;
 int acpi_get_handle (int *,char*,int **) ;

__attribute__((used)) static int asus_handle_init(char *name, acpi_handle * handle,
       char **paths, int num_paths)
{
 int i;
 acpi_status status;

 for (i = 0; i < num_paths; i++) {
  status = acpi_get_handle(((void*)0), paths[i], handle);
  if (ACPI_SUCCESS(status))
   return 0;
 }

 *handle = ((void*)0);
 return -ENODEV;
}
