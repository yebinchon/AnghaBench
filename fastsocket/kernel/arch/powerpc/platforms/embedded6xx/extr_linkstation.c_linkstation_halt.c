
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int linkstation_power_off () ;

__attribute__((used)) static void linkstation_halt(void)
{
 linkstation_power_off();

}
