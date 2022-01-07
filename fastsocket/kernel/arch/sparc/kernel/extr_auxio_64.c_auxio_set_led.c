
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AUXIO_AUX1_LED ;
 int AUXIO_PCIO_LED ;
 scalar_t__ AUXIO_TYPE_EBUS ;
 int __auxio_set_bit (int ,int,int) ;
 scalar_t__ auxio_devtype ;

void auxio_set_led(int on)
{
 int ebus = auxio_devtype == AUXIO_TYPE_EBUS;
 u8 bit;

 bit = (ebus ? AUXIO_PCIO_LED : AUXIO_AUX1_LED);
 __auxio_set_bit(bit, on, ebus);
}
