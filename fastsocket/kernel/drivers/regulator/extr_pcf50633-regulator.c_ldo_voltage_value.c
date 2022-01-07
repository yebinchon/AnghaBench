
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static unsigned int ldo_voltage_value(u8 bits)
{
 bits &= 0x1f;

 return 900 + (bits * 100);
}
