
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int acpi_status ;
struct TYPE_2__ {int status; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int acpi_evaluate_integer (int ,int *,int *,unsigned long long*) ;
 TYPE_1__* hotk ;
 int pr_warning (char*) ;
 int wireless_status_handle ;

__attribute__((used)) static int read_wireless_status(int mask)
{
 unsigned long long status;
 acpi_status rv = AE_OK;

 if (!wireless_status_handle)
  return (hotk->status & mask) ? 1 : 0;

 rv = acpi_evaluate_integer(wireless_status_handle, ((void*)0), ((void*)0), &status);
 if (ACPI_FAILURE(rv))
  pr_warning("Error reading Wireless status\n");
 else
  return (status & mask) ? 1 : 0;

 return (hotk->status & mask) ? 1 : 0;
}
