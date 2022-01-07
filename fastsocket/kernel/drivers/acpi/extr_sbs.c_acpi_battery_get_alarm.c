
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct acpi_battery {int alarm_capacity; TYPE_1__* sbs; } ;
struct TYPE_2__ {int hc; } ;


 int ACPI_SBS_BATTERY ;
 int SMBUS_READ_WORD ;
 int acpi_smbus_read (int ,int ,int ,int,int *) ;

__attribute__((used)) static int acpi_battery_get_alarm(struct acpi_battery *battery)
{
 return acpi_smbus_read(battery->sbs->hc, SMBUS_READ_WORD,
     ACPI_SBS_BATTERY, 0x01,
     (u8 *)&battery->alarm_capacity);
}
