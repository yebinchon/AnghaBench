
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ integer; TYPE_1__ package; } ;
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
 scalar_t__ ACPI_TYPE_INTEGER ;
 int ACPI_TYPE_PACKAGE ;
 int ACPI_UINT32_MAX ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int PAGE_SIZE ;
 int TPM_PPI_FN_GETREQ ;
 int acpi_evaluate_object_typed (int ,char*,struct acpi_object_list*,struct acpi_buffer*,int ) ;
 int acpi_walk_namespace (int ,int ,int ,int ,int ,int *) ;
 int kfree (scalar_t__) ;
 int ppi_assign_params (union acpi_object*,int ) ;
 int ppi_callback ;
 int scnprintf (char*,int ,char*,scalar_t__) ;
 int tpm_device_name ;

__attribute__((used)) static ssize_t tpm_show_ppi_request(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 acpi_handle handle;
 acpi_status status;
 struct acpi_object_list input;
 struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object params[4];
 union acpi_object *ret_obj;

 input.count = 4;
 ppi_assign_params(params, TPM_PPI_FN_GETREQ);
 input.pointer = params;
 status = acpi_walk_namespace(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
         ACPI_UINT32_MAX, ppi_callback,
         tpm_device_name, &handle);
 if (ACPI_FAILURE(status))
  return -ENXIO;

 status = acpi_evaluate_object_typed(handle, "_DSM", &input, &output,
         ACPI_TYPE_PACKAGE);
 if (ACPI_FAILURE(status))
  return -ENOMEM;






 ret_obj = ((union acpi_object *)output.pointer)->package.elements;
 if (ret_obj->type == ACPI_TYPE_INTEGER) {
  if (ret_obj->integer.value) {
   status = -EFAULT;
   goto cleanup;
  }
  ret_obj++;
  if (ret_obj->type == ACPI_TYPE_INTEGER)
   status = scnprintf(buf, PAGE_SIZE, "%llu\n",
        ret_obj->integer.value);
  else
   status = -EINVAL;
 } else {
  status = -EINVAL;
 }
cleanup:
 kfree(output.pointer);
 return status;
}
