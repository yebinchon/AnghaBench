
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEEPC_EC_FAN_HRPM ;
 int EEEPC_EC_FAN_LRPM ;
 int read_acpi_int (int *,int ,int*) ;

__attribute__((used)) static int eeepc_get_fan_rpm(void)
{
 int high = 0;
 int low = 0;

 read_acpi_int(((void*)0), EEEPC_EC_FAN_HRPM, &high);
 read_acpi_int(((void*)0), EEEPC_EC_FAN_LRPM, &low);
 return (high << 8 | low);
}
