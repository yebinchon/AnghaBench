
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int * acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int TPACPI_DBG_INIT ;
 int acpi_get_handle (int *,char*,int **) ;
 int dbg_printk (int ,char*,char*,char*) ;
 int vdbg_printk (int ,char*,char*) ;

__attribute__((used)) static void drv_acpi_handle_init(char *name,
      acpi_handle *handle, acpi_handle parent,
      char **paths, int num_paths, char **path)
{
 int i;
 acpi_status status;

 vdbg_printk(TPACPI_DBG_INIT, "trying to locate ACPI handle for %s\n",
  name);

 for (i = 0; i < num_paths; i++) {
  status = acpi_get_handle(parent, paths[i], handle);
  if (ACPI_SUCCESS(status)) {
   *path = paths[i];
   dbg_printk(TPACPI_DBG_INIT,
       "Found ACPI handle %s for %s\n",
       *path, name);
   return;
  }
 }

 vdbg_printk(TPACPI_DBG_INIT, "ACPI handle for %s not found\n",
      name);
 *handle = ((void*)0);
}
