
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_line_get (int ) ;
 int ixp2000_sda_pin (void*) ;

__attribute__((used)) static int ixp2000_bit_getsda(void *data)
{
 return gpio_line_get(ixp2000_sda_pin(data));
}
