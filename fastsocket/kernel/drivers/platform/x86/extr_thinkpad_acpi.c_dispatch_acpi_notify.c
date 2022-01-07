
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ibm_struct {TYPE_1__* acpi; } ;
typedef int acpi_handle ;
struct TYPE_2__ {int (* notify ) (struct ibm_struct*,int ) ;} ;


 scalar_t__ TPACPI_LIFE_RUNNING ;
 int stub1 (struct ibm_struct*,int ) ;
 scalar_t__ tpacpi_lifecycle ;

__attribute__((used)) static void dispatch_acpi_notify(acpi_handle handle, u32 event, void *data)
{
 struct ibm_struct *ibm = data;

 if (tpacpi_lifecycle != TPACPI_LIFE_RUNNING)
  return;

 if (!ibm || !ibm->acpi || !ibm->acpi->notify)
  return;

 ibm->acpi->notify(ibm, event);
}
