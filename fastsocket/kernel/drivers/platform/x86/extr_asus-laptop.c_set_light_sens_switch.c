
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int light_switch; } ;


 TYPE_1__* hotk ;
 int ls_switch_handle ;
 int pr_warning (char*) ;
 scalar_t__ write_acpi_int (int ,int *,int,int *) ;

__attribute__((used)) static void set_light_sens_switch(int value)
{
 if (write_acpi_int(ls_switch_handle, ((void*)0), value, ((void*)0)))
  pr_warning("Error setting light sensor switch\n");
 hotk->light_switch = value;
}
