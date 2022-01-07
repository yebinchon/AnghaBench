
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int halt_skas () ;
 int uml_cleanup () ;

void machine_power_off(void)
{
 uml_cleanup();
 halt_skas();
}
