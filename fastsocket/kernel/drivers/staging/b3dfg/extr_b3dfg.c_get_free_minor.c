
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B3DFG_MAX_DEVS ;
 scalar_t__* b3dfg_devices ;

__attribute__((used)) static int get_free_minor(void)
{
 int i;
 for (i = 0; i < B3DFG_MAX_DEVS; i++) {
  if (b3dfg_devices[i] == 0)
   return i;
 }
 return -1;
}
