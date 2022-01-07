
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int value; } ;
struct TYPE_7__ {int count; union acpi_object* elements; } ;
struct TYPE_6__ {int length; char* pointer; } ;
struct TYPE_5__ {int pointer; } ;
union acpi_object {TYPE_4__ integer; TYPE_3__ package; int type; TYPE_2__ buffer; TYPE_1__ string; } ;
typedef int u64 ;
typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {int * pointer; int length; int * member_1; int member_0; } ;
typedef int ssize_t ;
typedef int req ;
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
 int EFAULT ;
 int ENOMEM ;
 int ENXIO ;
 int EPERM ;
 int PPI_VERSION_LEN ;
 int TPM_PPI_FN_SUBREQ ;
 int TPM_PPI_FN_SUBREQ2 ;
 int TPM_PPI_FN_VERSION ;
 int acpi_evaluate_object_typed (int ,char*,struct acpi_object_list*,struct acpi_buffer*,int ) ;
 int acpi_walk_namespace (int ,int ,int ,int ,int ,int *) ;
 int kfree (int *) ;
 int ppi_assign_params (union acpi_object*,int ) ;
 int ppi_callback ;
 int sscanf (char const*,char*,int*) ;
 int strcmp (char*,char*) ;
 int strncpy (char*,int ,int ) ;
 int tpm_device_name ;

__attribute__((used)) static ssize_t tpm_store_ppi_request(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 char version[PPI_VERSION_LEN + 1];
 acpi_handle handle;
 acpi_status status;
 struct acpi_object_list input;
 struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object params[4];
 union acpi_object obj;
 u32 req;
 u64 ret;

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
 kfree(output.pointer);
 output.length = ACPI_ALLOCATE_BUFFER;
 output.pointer = ((void*)0);





 if (strcmp(version, "1.1") == -1)
  params[2].integer.value = TPM_PPI_FN_SUBREQ;
 else
  params[2].integer.value = TPM_PPI_FN_SUBREQ2;






 if (strcmp(version, "1.2") == -1) {
  params[3].type = ACPI_TYPE_BUFFER;
  params[3].buffer.length = sizeof(req);
  sscanf(buf, "%d", &req);
  params[3].buffer.pointer = (char *)&req;
 } else {
  params[3].package.count = 1;
  obj.type = ACPI_TYPE_INTEGER;
  sscanf(buf, "%llu", &obj.integer.value);
  params[3].package.elements = &obj;
 }

 status = acpi_evaluate_object_typed(handle, "_DSM", &input, &output,
         ACPI_TYPE_INTEGER);
 if (ACPI_FAILURE(status))
  return -ENOMEM;
 ret = ((union acpi_object *)output.pointer)->integer.value;
 if (ret == 0)
  status = (acpi_status)count;
 else if (ret == 1)
  status = -EPERM;
 else
  status = -EFAULT;
 kfree(output.pointer);
 return status;
}
