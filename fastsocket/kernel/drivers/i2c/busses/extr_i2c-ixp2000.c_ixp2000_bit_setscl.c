
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_IN ;
 int GPIO_OUT ;
 int gpio_line_config (int ,int ) ;
 int gpio_line_get (int ) ;
 int ixp2000_scl_pin (void*) ;

__attribute__((used)) static void ixp2000_bit_setscl(void *data, int val)
{
 int i = 5000;

 if (val) {
  gpio_line_config(ixp2000_scl_pin(data), GPIO_IN);
  while(!gpio_line_get(ixp2000_scl_pin(data)) && i--);
 } else {
  gpio_line_config(ixp2000_scl_pin(data), GPIO_OUT);
 }
}
