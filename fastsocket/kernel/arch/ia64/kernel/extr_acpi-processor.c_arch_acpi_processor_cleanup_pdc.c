
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_processor {TYPE_2__* pdc; } ;
struct TYPE_3__ {TYPE_2__* pointer; } ;
struct TYPE_4__ {struct TYPE_4__* pointer; TYPE_1__ buffer; } ;


 int kfree (TYPE_2__*) ;

void arch_acpi_processor_cleanup_pdc(struct acpi_processor *pr)
{
 if (pr->pdc) {
  kfree(pr->pdc->pointer->buffer.pointer);
  kfree(pr->pdc->pointer);
  kfree(pr->pdc);
  pr->pdc = ((void*)0);
 }
}
