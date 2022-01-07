
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int max1586_v6_calc_voltage(unsigned selector)
{
 static int voltages_uv[] = { 1, 1800000, 2500000, 3000000 };

 return voltages_uv[selector];
}
