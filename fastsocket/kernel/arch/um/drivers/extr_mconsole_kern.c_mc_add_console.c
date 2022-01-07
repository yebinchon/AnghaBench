
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mc_console ;
 int register_console (int *) ;

__attribute__((used)) static int mc_add_console(void)
{
 register_console(&mc_console);
 return 0;
}
