
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEEPC_EC_FAN_CTRL ;
 int read_acpi_int (int *,int ,int*) ;

__attribute__((used)) static int eeepc_get_fan_ctrl(void)
{
 int value = 0;

 read_acpi_int(((void*)0), EEEPC_EC_FAN_CTRL, &value);
 return ((value & 0x02 ? 1 : 0));
}
