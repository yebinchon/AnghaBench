
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmdline ;
 int simple_strtol (int ,int *,int ) ;

__attribute__((used)) static int fsl_rio_get_hdid(int index)
{

 if (!cmdline)
  return -1;

 return simple_strtol(cmdline, ((void*)0), 0);
}
