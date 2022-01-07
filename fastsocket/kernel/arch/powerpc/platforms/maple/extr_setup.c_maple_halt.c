
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maple_power_off () ;

__attribute__((used)) static void maple_halt(void)
{
 maple_power_off();
}
