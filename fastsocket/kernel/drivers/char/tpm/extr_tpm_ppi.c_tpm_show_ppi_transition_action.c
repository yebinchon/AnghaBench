
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int * pointer; scalar_t__ length; } ;
struct TYPE_4__ {int pointer; } ;
union acpi_object {TYPE_3__ integer; TYPE_2__ buffer; int type; TYPE_1__ string; } ;
typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {int * pointer; int length; int * member_1; int member_0; } ;
typedef int ssize_t ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_BUFFER ;
 int ACPI_TYPE_DEVICE ;
 int ACPI_TYPE_INTEGER ;
 int ACPI_TYPE_STRING ;
 int ACPI_UINT32_MAX ;
 int ARRAY_SIZE (char**) ;
 int ENOMEM ;
 int ENXIO ;
 int PAGE_SIZE ;
 int PPI_VERSION_LEN ;
 int TPM_PPI_FN_GETACT ;
 int TPM_PPI_FN_VERSION ;
 int acpi_evaluate_object_typed (int ,char*,struct acpi_object_list*,struct acpi_buffer*,int ) ;
 int acpi_walk_namespace (int ,int ,int ,int ,int ,int *) ;
 int kfree (int *) ;
 int ppi_assign_params (union acpi_object*,int ) ;
 int ppi_callback ;
 int scnprintf (char*,int ,char*,int,char*) ;
 int strcmp (char*,char*) ;
 int strncpy (char*,int ,int ) ;
 int tpm_device_name ;

__attribute__((used)) static ssize_t tpm_show_ppi_transition_action(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 char version[PPI_VERSION_LEN + 1];
 acpi_handle handle;
 acpi_status status;
 struct acpi_object_list input;
 struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object params[4];
 u32 ret;
 char *info[] = {
  "None",
  "Shutdown",
  "Reboot",
  "OS Vendor-specific",
  "Error",
 };
 input.count = 4;
 ppi_assign_params(params, TPM_PPI_FN_VERSION);
 input.pointer = params;
 status = acpi_walk_namespace(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
         ACPI_UINT32_MAX, ppi_callback,
         tpm_device_name, &handle);
 if (ACPI_FAILURE(status))
  return -ENXIO;

 status = acpi_evaluate_object_typed(handle, "_DSM", &input, &output,
         ACPI_TYPE_STRING);
 if (ACPI_FAILURE(status))
  return -ENOMEM;
 strncpy(version,
  ((union acpi_object *)output.pointer)->string.pointer,
  PPI_VERSION_LEN);





 if (strcmp(version, "1.2") == -1) {
  params[3].type = ACPI_TYPE_BUFFER;
  params[3].buffer.length = 0;
  params[3].buffer.pointer = ((void*)0);
 }
 params[2].integer.value = TPM_PPI_FN_GETACT;
 kfree(output.pointer);
 output.length = ACPI_ALLOCATE_BUFFER;
 output.pointer = ((void*)0);
 status = acpi_evaluate_object_typed(handle, "_DSM", &input, &output,
         ACPI_TYPE_INTEGER);
 if (ACPI_FAILURE(status))
  return -ENOMEM;
 ret = ((union acpi_object *)output.pointer)->integer.value;
 if (ret < ARRAY_SIZE(info) - 1)
  status = scnprintf(buf, PAGE_SIZE, "%d: %s\n", ret, info[ret]);
 else
  status = scnprintf(buf, PAGE_SIZE, "%d: %s\n", ret,
       info[ARRAY_SIZE(info)-1]);
 kfree(output.pointer);
 return status;
}
