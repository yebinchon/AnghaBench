
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pointer; } ;
union acpi_object {TYPE_1__ string; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int ssize_t ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_DEVICE ;
 int ACPI_TYPE_STRING ;
 int ACPI_UINT32_MAX ;
 int ENOMEM ;
 int ENXIO ;
 int PAGE_SIZE ;
 int TPM_PPI_FN_VERSION ;
 int acpi_evaluate_object_typed (int ,char*,struct acpi_object_list*,struct acpi_buffer*,int ) ;
 int acpi_walk_namespace (int ,int ,int ,int ,int ,int *) ;
 int kfree (scalar_t__) ;
 int ppi_assign_params (union acpi_object*,int ) ;
 int ppi_callback ;
 int scnprintf (char*,int ,char*,int ) ;
 int tpm_device_name ;

__attribute__((used)) static ssize_t tpm_show_ppi_version(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 acpi_handle handle;
 acpi_status status;
 struct acpi_object_list input;
 struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object params[4];
 union acpi_object *obj;

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
 obj = (union acpi_object *)output.pointer;
 status = scnprintf(buf, PAGE_SIZE, "%s\n", obj->string.pointer);
 kfree(output.pointer);
 return status;
}
