
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arm_machine_restart (char,char const*) ;
 int mioa701_machine_exit () ;

__attribute__((used)) static void mioa701_restart(char c, const char *cmd)
{
 mioa701_machine_exit();
 arm_machine_restart('s', cmd);
}
