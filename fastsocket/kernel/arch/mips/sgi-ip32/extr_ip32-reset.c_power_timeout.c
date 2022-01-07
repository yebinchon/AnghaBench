
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ip32_machine_power_off () ;

__attribute__((used)) static void power_timeout(unsigned long data)
{
 ip32_machine_power_off();
}
