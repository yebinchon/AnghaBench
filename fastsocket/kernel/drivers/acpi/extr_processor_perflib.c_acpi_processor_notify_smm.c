
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct module {int dummy; } ;
typedef int acpi_status ;
struct TYPE_2__ {int smi_command; scalar_t__ pstate_control; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int) ;
 int AE_INFO ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int PPC_IN_USE ;
 int PPC_REGISTERED ;
 TYPE_1__ acpi_gbl_FADT ;
 int acpi_os_write_port (int ,int ,int) ;
 int acpi_processor_ppc_status ;
 int module_put (struct module*) ;
 int try_module_get (struct module*) ;

int acpi_processor_notify_smm(struct module *calling_module)
{
 acpi_status status;
 static int is_done = 0;


 if (!(acpi_processor_ppc_status & PPC_REGISTERED))
  return -EBUSY;

 if (!try_module_get(calling_module))
  return -EINVAL;






 if (is_done > 0) {
  module_put(calling_module);
  return 0;
 } else if (is_done < 0) {
  module_put(calling_module);
  return is_done;
 }

 is_done = -EIO;


 if ((!acpi_gbl_FADT.smi_command) || (!acpi_gbl_FADT.pstate_control)) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "No SMI port or pstate_control\n"));
  module_put(calling_module);
  return 0;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "Writing pstate_control [0x%x] to smi_command [0x%x]\n",
     acpi_gbl_FADT.pstate_control, acpi_gbl_FADT.smi_command));

 status = acpi_os_write_port(acpi_gbl_FADT.smi_command,
        (u32) acpi_gbl_FADT.pstate_control, 8);
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status,
    "Failed to write pstate_control [0x%x] to "
    "smi_command [0x%x]", acpi_gbl_FADT.pstate_control,
    acpi_gbl_FADT.smi_command));
  module_put(calling_module);
  return status;
 }



 is_done = 1;

 if (!(acpi_processor_ppc_status & PPC_IN_USE))
  module_put(calling_module);

 return 0;
}
