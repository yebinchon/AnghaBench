
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int value; } ;
struct TYPE_8__ {unsigned long long proc_id; int pblk_length; scalar_t__ pblk_address; } ;
union acpi_object {TYPE_4__ integer; TYPE_2__ processor; int member_0; } ;
struct TYPE_9__ {scalar_t__ address; int duty_width; int duty_offset; } ;
struct TYPE_7__ {int bm_control; } ;
struct acpi_processor {unsigned long long acpi_id; int id; int handle; TYPE_3__ throttling; scalar_t__ pblk; TYPE_1__ flags; } ;
struct acpi_device {int dev; } ;
struct acpi_buffer {int member_0; union acpi_object* member_1; } ;
typedef int acpi_status ;
struct TYPE_12__ {int duty_width; int duty_offset; scalar_t__ pm2_control_length; scalar_t__ pm2_control_block; } ;
struct TYPE_11__ {int smp; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int) ;
 int ACPI_PROCESSOR_OBJECT_HID ;
 scalar_t__ ACPI_SUCCESS (int) ;
 int EINVAL ;
 int ENODEV ;
 int METHOD_NAME__UID ;
 int TRUE ;
 int acpi_device_bid (struct acpi_device*) ;
 int acpi_device_hid (struct acpi_device*) ;
 struct acpi_processor* acpi_driver_data (struct acpi_device*) ;
 int acpi_evaluate_integer (int ,int ,int *,unsigned long long*) ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 TYPE_6__ acpi_gbl_FADT ;
 int acpi_processor_errata (struct acpi_processor*) ;
 int acpi_processor_hotadd_init (struct acpi_processor*) ;
 int arch_fix_phys_package_id (int,int ) ;
 int dev_err (int *,char*,int) ;
 TYPE_5__ errata ;
 int get_cpu_id (int ,int,unsigned long long) ;
 int num_online_cpus () ;
 int request_region (scalar_t__,int,char*) ;
 int sprintf (int ,char*,int) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int acpi_processor_get_info(struct acpi_device *device)
{
 acpi_status status = 0;
 union acpi_object object = { 0 };
 struct acpi_buffer buffer = { sizeof(union acpi_object), &object };
 struct acpi_processor *pr;
 int cpu_index, device_declaration = 0;
 static int cpu0_initialized;

 pr = acpi_driver_data(device);
 if (!pr)
  return -EINVAL;

 if (num_online_cpus() > 1)
  errata.smp = TRUE;

 acpi_processor_errata(pr);





 if (acpi_gbl_FADT.pm2_control_block && acpi_gbl_FADT.pm2_control_length) {
  pr->flags.bm_control = 1;
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Bus mastering arbitration control present\n"));
 } else
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "No bus mastering arbitration control\n"));

 if (!strcmp(acpi_device_hid(device), ACPI_PROCESSOR_OBJECT_HID)) {

  status = acpi_evaluate_object(pr->handle, ((void*)0), ((void*)0), &buffer);
  if (ACPI_FAILURE(status)) {
   dev_err(&device->dev,
    "Failed to evaluate processor object (0x%x)\n",
    status);
   return -ENODEV;
  }






  pr->acpi_id = object.processor.proc_id;
 } else {




  unsigned long long value;
  status = acpi_evaluate_integer(pr->handle, METHOD_NAME__UID,
      ((void*)0), &value);
  if (ACPI_FAILURE(status)) {
   dev_err(&device->dev,
    "Failed to evaluate processor _UID (0x%x)\n",
    status);
   return -ENODEV;
  }
  device_declaration = 1;
  pr->acpi_id = value;
 }
 cpu_index = get_cpu_id(pr->handle, device_declaration, pr->acpi_id);


 if (!cpu0_initialized && (cpu_index == -1) &&
     (num_online_cpus() == 1)) {
  cpu_index = 0;
 }

 cpu0_initialized = 1;

 pr->id = cpu_index;






 if (pr->id == -1) {
  if (ACPI_FAILURE(acpi_processor_hotadd_init(pr)))
   return -ENODEV;
 }
 sprintf(acpi_device_bid(device), "CPU%X", pr->id);
 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Processor [%d:%d]\n", pr->id,
     pr->acpi_id));

 if (!object.processor.pblk_address)
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "No PBLK (NULL address)\n"));
 else if (object.processor.pblk_length != 6)
  dev_err(&device->dev, "Invalid PBLK length [%d]\n",
       object.processor.pblk_length);
 else {
  pr->throttling.address = object.processor.pblk_address;
  pr->throttling.duty_offset = acpi_gbl_FADT.duty_offset;
  pr->throttling.duty_width = acpi_gbl_FADT.duty_width;

  pr->pblk = object.processor.pblk_address;
  request_region(pr->throttling.address, 6, "ACPI CPU throttle");
 }






 status = acpi_evaluate_object(pr->handle, "_SUN", ((void*)0), &buffer);
 if (ACPI_SUCCESS(status))
  arch_fix_phys_package_id(pr->id, object.integer.value);

 return 0;
}
