
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct acpi_buffer {int * member_1; int member_0; } ;
struct TYPE_4__ {scalar_t__ present; } ;
struct TYPE_6__ {TYPE_1__ status; } ;
struct TYPE_5__ {int cm_supported; int handle; int init_flag; TYPE_3__* device; } ;


 int ACPI_ALLOCATE_BUFFER ;
 int EINVAL ;
 int ENODEV ;
 int acpi_bus_get_status (TYPE_3__*) ;
 int cmsg_quirks () ;
 TYPE_2__* ehotk ;
 int pr_err (char*) ;
 int pr_info (char*,int ) ;
 int pr_notice (char*,int ) ;
 scalar_t__ read_acpi_int (int ,char*,int *) ;
 scalar_t__ write_acpi_int (int ,char*,int ,struct acpi_buffer*) ;

__attribute__((used)) static int eeepc_hotk_check(void)
{
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 int result;

 result = acpi_bus_get_status(ehotk->device);
 if (result)
  return result;
 if (ehotk->device->status.present) {
  if (write_acpi_int(ehotk->handle, "INIT", ehotk->init_flag,
        &buffer)) {
   pr_err("Hotkey initialization failed\n");
   return -ENODEV;
  } else {
   pr_notice("Hotkey init flags 0x%x\n", ehotk->init_flag);
  }

  if (read_acpi_int(ehotk->handle, "CMSG"
       , &ehotk->cm_supported)) {
   pr_err("Get control methods supported failed\n");
   return -ENODEV;
  } else {
   cmsg_quirks();
   pr_info("Get control methods supported: 0x%x\n",
    ehotk->cm_supported);
  }
 } else {
  pr_err("Hotkey device not present, aborting\n");
  return -EINVAL;
 }
 return 0;
}
