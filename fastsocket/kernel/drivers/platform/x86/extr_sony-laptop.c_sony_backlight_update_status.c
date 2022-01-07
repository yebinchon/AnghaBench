
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int acpi_callsetfunc (int ,char*,scalar_t__,int *) ;
 int sony_nc_acpi_handle ;

__attribute__((used)) static int sony_backlight_update_status(struct backlight_device *bd)
{
 return acpi_callsetfunc(sony_nc_acpi_handle, "SBRT",
    bd->props.brightness + 1, ((void*)0));
}
