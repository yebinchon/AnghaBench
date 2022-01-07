
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static unsigned int auto_voltage_value(u8 bits)
{
 if (bits < 0x2f)
  return 0;

 return 625 + (bits * 25);
}
