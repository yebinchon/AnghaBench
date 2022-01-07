
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEEPC_EC_FAN_CTRL ;
 int EEEPC_EC_SFB3 ;
 int ec_write (int ,int) ;
 int read_acpi_int (int *,int ,int*) ;

__attribute__((used)) static void eeepc_set_fan_ctrl(int manual)
{
 int value = 0;

 read_acpi_int(((void*)0), EEEPC_EC_FAN_CTRL, &value);
 if (manual)
  value |= 0x02;
 else
  value &= ~0x02;
 ec_write(EEEPC_EC_SFB3, value);
}
