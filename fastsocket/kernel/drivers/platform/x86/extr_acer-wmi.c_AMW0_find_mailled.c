
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; scalar_t__ pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
struct wmab_ret {int eex; } ;
struct wmab_args {int eax; scalar_t__ edx; scalar_t__ ecx; scalar_t__ ebx; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
struct TYPE_4__ {int capability; } ;


 int ACER_CAP_MAILLED ;
 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int AE_ERROR ;
 int AE_OK ;
 TYPE_2__* interface ;
 int kfree (scalar_t__) ;
 int wmab_execute (struct wmab_args*,struct acpi_buffer*) ;

__attribute__((used)) static acpi_status AMW0_find_mailled(void)
{
 struct wmab_args args;
 struct wmab_ret ret;
 acpi_status status = AE_OK;
 struct acpi_buffer out = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *obj;

 args.eax = 0x86;
 args.ebx = args.ecx = args.edx = 0;

 status = wmab_execute(&args, &out);
 if (ACPI_FAILURE(status))
  return status;

 obj = (union acpi_object *) out.pointer;
 if (obj && obj->type == ACPI_TYPE_BUFFER &&
 obj->buffer.length == sizeof(struct wmab_ret)) {
  ret = *((struct wmab_ret *) obj->buffer.pointer);
 } else {
  return AE_ERROR;
 }

 if (ret.eex & 0x1)
  interface->capability |= ACER_CAP_MAILLED;

 kfree(out.pointer);

 return AE_OK;
}
