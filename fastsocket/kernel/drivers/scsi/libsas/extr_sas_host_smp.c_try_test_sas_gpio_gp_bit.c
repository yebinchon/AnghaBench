
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* to_sas_gpio_gp_bit (unsigned int,int*,int,int,int*) ;

int try_test_sas_gpio_gp_bit(unsigned int od, u8 *data, u8 index, u8 count)
{
 u8 *byte;
 u8 bit;

 byte = to_sas_gpio_gp_bit(od, data, index, count, &bit);
 if (!byte)
  return -1;

 return (*byte >> bit) & 1;
}
