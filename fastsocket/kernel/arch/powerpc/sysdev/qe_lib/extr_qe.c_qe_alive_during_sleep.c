
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int of_find_compatible_node (int *,int *,char*) ;

int qe_alive_during_sleep(void)
{
 static int ret = -1;

 if (ret != -1)
  return ret;

 ret = !of_find_compatible_node(((void*)0), ((void*)0), "fsl,mpc8569-pmc");

 return ret;
}
