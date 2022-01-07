
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ value; } ;
struct TYPE_4__ {union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ integer; TYPE_1__ package; } ;
struct acpi_smbus_cmi {int cap_info; int cap_read; int cap_write; int handle; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
struct TYPE_6__ {int mt_sbw; int mt_sbr; int mt_info; } ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_INFO ;
 int EIO ;
 int acpi_evaluate_object (int ,int ,int *,struct acpi_buffer*) ;
 int kfree (union acpi_object*) ;
 TYPE_3__ smbus_methods ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int acpi_smbus_cmi_add_cap(struct acpi_smbus_cmi *smbus_cmi,
      const char *name)
{
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;
 acpi_status status;

 if (!strcmp(name, smbus_methods.mt_info)) {
  status = acpi_evaluate_object(smbus_cmi->handle,
     smbus_methods.mt_info,
     ((void*)0), &buffer);
  if (ACPI_FAILURE(status)) {
   ACPI_ERROR((AE_INFO, "Evaluating %s: %i",
       smbus_methods.mt_info, status));
   return -EIO;
  }

  obj = buffer.pointer;
  if (obj && obj->type == ACPI_TYPE_PACKAGE)
   obj = obj->package.elements;
  else {
   ACPI_ERROR((AE_INFO, "Invalid argument type"));
   kfree(buffer.pointer);
   return -EIO;
  }

  if (obj->type != ACPI_TYPE_INTEGER) {
   ACPI_ERROR((AE_INFO, "Invalid argument type"));
   kfree(buffer.pointer);
   return -EIO;
  } else
   ACPI_DEBUG_PRINT((ACPI_DB_INFO, "SMBus CMI Version %x"
       "\n", (int)obj->integer.value));

  kfree(buffer.pointer);
  smbus_cmi->cap_info = 1;
 } else if (!strcmp(name, smbus_methods.mt_sbr))
  smbus_cmi->cap_read = 1;
 else if (!strcmp(name, smbus_methods.mt_sbw))
  smbus_cmi->cap_write = 1;
 else
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Unsupported CMI method: %s\n",
     name));

 return 0;
}
