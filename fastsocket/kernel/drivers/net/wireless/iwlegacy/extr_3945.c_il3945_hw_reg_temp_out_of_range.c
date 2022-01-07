
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
il3945_hw_reg_temp_out_of_range(int temperature)
{
 return (temperature < -260 || temperature > 25) ? 1 : 0;
}
