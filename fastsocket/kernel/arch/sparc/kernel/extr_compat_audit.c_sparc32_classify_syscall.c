
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int sparc32_classify_syscall(unsigned syscall)
{
 switch(syscall) {
 case 130:
  return 2;
 case 129:
  return 3;
 case 128:
  return 4;
 case 131:
  return 5;
 default:
  return 1;
 }
}
