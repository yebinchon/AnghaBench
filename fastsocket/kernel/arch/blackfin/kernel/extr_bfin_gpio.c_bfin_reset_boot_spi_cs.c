
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_set; } ;


 int AWA_DUMMY_READ (int ) ;
 int GPIO_USAGE ;
 unsigned short P_IDENT (unsigned short) ;
 int data_set ;
 TYPE_1__** gpio_array ;
 size_t gpio_bank (unsigned short) ;
 int gpio_bit (unsigned short) ;
 int port_setup (unsigned short,int ) ;
 int udelay (int) ;

void bfin_reset_boot_spi_cs(unsigned short pin)
{
 unsigned short gpio = P_IDENT(pin);
 port_setup(gpio, GPIO_USAGE);
 gpio_array[gpio_bank(gpio)]->data_set = gpio_bit(gpio);
 AWA_DUMMY_READ(data_set);
 udelay(1);
}
