
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_NAME_LEN ;
 scalar_t__ diag224_cpu_names ;
 int memcpy (char*,scalar_t__,int) ;
 int strim (char*) ;

__attribute__((used)) static int diag224_idx2name(int index, char *name)
{
 memcpy(name, diag224_cpu_names + ((index + 1) * CPU_NAME_LEN),
  CPU_NAME_LEN);
 name[CPU_NAME_LEN] = 0;
 strim(name);
 return 0;
}
