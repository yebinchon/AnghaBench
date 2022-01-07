
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* IOP3XX_GPOD ;
 int* IOP3XX_GPOE ;

void em7210_power_off(void)
{
 *IOP3XX_GPOE &= 0xfe;
 *IOP3XX_GPOD |= 0x01;
}
