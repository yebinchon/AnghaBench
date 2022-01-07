
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arm_machine_restart (char,int *) ;
 int mioa701_machine_exit () ;

__attribute__((used)) static void mioa701_poweroff(void)
{
 mioa701_machine_exit();
 arm_machine_restart('s', ((void*)0));
}
