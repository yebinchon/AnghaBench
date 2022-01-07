
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int eeprom_coarse_byte(unsigned int word)
{
 return (word >> 8) & 0xff;
}
