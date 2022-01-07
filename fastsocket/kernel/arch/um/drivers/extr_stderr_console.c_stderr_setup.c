
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int simple_strtoul (char*,char**,int ) ;
 int use_stderr_console ;

__attribute__((used)) static int stderr_setup(char *str)
{
 if (!str)
  return 0;
 use_stderr_console = simple_strtoul(str,&str,0);
 return 1;
}
