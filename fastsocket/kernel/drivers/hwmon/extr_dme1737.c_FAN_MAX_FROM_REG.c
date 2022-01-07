
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* FAN_MAX ;

__attribute__((used)) static int FAN_MAX_FROM_REG(int reg)
{
 int i;

 for (i = 10; i > 0; i--) {
  if (reg == FAN_MAX[i]) {
   break;
  }
 }

 return 1000 + i * 500;
}
