
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ acpi_status ;
struct TYPE_2__ {unsigned long long max_brightness; int acpi_handle; } ;


 scalar_t__ AE_OK ;
 int FUJLAPTOP_DBG_TRACE ;
 scalar_t__ acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 TYPE_1__* fujitsu ;
 int vdbg_printk (int ,char*) ;

__attribute__((used)) static int get_max_brightness(void)
{
 unsigned long long state = 0;
 acpi_status status = AE_OK;

 vdbg_printk(FUJLAPTOP_DBG_TRACE, "get max lcd level via RBLL\n");

 status =
     acpi_evaluate_integer(fujitsu->acpi_handle, "RBLL", ((void*)0), &state);
 if (status < 0)
  return status;

 fujitsu->max_brightness = state;

 return fujitsu->max_brightness;
}
