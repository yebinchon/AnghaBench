
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arm_machine_restart (char,int *) ;

__attribute__((used)) static void spitz_poweroff(void)
{
 arm_machine_restart('g', ((void*)0));
}
