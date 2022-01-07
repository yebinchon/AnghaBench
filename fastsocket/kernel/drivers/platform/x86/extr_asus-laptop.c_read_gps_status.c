
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int acpi_status ;
struct TYPE_2__ {int status; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int GPS_ON ;
 int acpi_evaluate_integer (int ,int *,int *,unsigned long long*) ;
 int gps_status_handle ;
 TYPE_1__* hotk ;
 int pr_warning (char*) ;

__attribute__((used)) static int read_gps_status(void)
{
 unsigned long long status;
 acpi_status rv = AE_OK;

 rv = acpi_evaluate_integer(gps_status_handle, ((void*)0), ((void*)0), &status);
 if (ACPI_FAILURE(rv))
  pr_warning("Error reading GPS status\n");
 else
  return status ? 1 : 0;

 return (hotk->status & GPS_ON) ? 1 : 0;
}
