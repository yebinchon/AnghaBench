
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSP_COMMAND_POWEROFF ;
 int dm355evm_command (int ) ;

__attribute__((used)) static void dm355evm_power_off(void)
{
 dm355evm_command(MSP_COMMAND_POWEROFF);
}
