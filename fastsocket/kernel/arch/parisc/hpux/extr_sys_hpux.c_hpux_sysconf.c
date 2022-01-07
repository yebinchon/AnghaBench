
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_PA_RISC1_1 ;
 int EINVAL ;
 int INT_MAX ;



int hpux_sysconf(int which)
{
 switch (which) {
 case 129:
  return CPU_PA_RISC1_1;
 case 128:
  return INT_MAX;
 default:
  return -EINVAL;
 }
}
