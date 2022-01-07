
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
typedef int u32 ;
struct acpi_processor {int handle; struct acpi_object_list* pdc; } ;
struct acpi_object_list {union acpi_object* pointer; } ;
typedef int acpi_status ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int) ;
 int ACPI_PDC_C_C1_FFH ;
 int ACPI_PDC_C_C2C3_FFH ;
 int AE_OK ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;
 scalar_t__ idle_nomwait ;

__attribute__((used)) static int acpi_processor_set_pdc(struct acpi_processor *pr)
{
 struct acpi_object_list *pdc_in = pr->pdc;
 acpi_status status = AE_OK;


 if (!pdc_in)
  return status;
 if (idle_nomwait) {





  union acpi_object *obj;
  u32 *buffer = ((void*)0);

  obj = pdc_in->pointer;
  buffer = (u32 *)(obj->buffer.pointer);
  buffer[2] &= ~(ACPI_PDC_C_C2C3_FFH | ACPI_PDC_C_C1_FFH);

 }
 status = acpi_evaluate_object(pr->handle, "_PDC", pdc_in, ((void*)0));

 if (ACPI_FAILURE(status))
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Could not evaluate _PDC, using legacy perf. control...\n"));

 return status;
}
