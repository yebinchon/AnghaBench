
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int display_set_handle ;
 int pr_warning (char*) ;
 scalar_t__ write_acpi_int (int ,int *,int,int *) ;

__attribute__((used)) static void set_display(int value)
{

 if (write_acpi_int(display_set_handle, ((void*)0), value, ((void*)0)))
  pr_warning("Error setting display\n");
 return;
}
