
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int gain_eeprom_address(unsigned int ao_channel,
     unsigned int range)
{
 return 0x8 + 2 * range + 12 * ao_channel;
}
