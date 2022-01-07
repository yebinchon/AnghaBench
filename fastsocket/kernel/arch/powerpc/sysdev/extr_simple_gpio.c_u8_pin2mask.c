
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 u8_pin2mask(unsigned int pin)
{
 return 1 << (8 - 1 - pin);
}
