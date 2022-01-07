
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _machine_restart (char*) ;

void machine_restart(char *command)
{
 if (_machine_restart)
  _machine_restart(command);
}
