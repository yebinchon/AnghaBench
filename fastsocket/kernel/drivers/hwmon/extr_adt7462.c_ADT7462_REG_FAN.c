
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADT7462_REG_FAN2_BASE_ADDR ;
 int ADT7462_REG_FAN_BASE_ADDR ;

__attribute__((used)) static int ADT7462_REG_FAN(int fan)
{
 if (fan < 4)
  return ADT7462_REG_FAN_BASE_ADDR + (2 * fan);
 return ADT7462_REG_FAN2_BASE_ADDR + (2 * (fan - 4));
}
