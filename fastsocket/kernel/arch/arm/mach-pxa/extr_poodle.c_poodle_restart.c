
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arm_machine_restart (char,char const*) ;

__attribute__((used)) static void poodle_restart(char mode, const char *cmd)
{
 arm_machine_restart('h', cmd);
}
