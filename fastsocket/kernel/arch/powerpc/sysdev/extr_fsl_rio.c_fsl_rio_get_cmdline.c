
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cmdline ;

__attribute__((used)) static int fsl_rio_get_cmdline(char *s)
{
 if (!s)
  return 0;

 cmdline = s;
 return 1;
}
