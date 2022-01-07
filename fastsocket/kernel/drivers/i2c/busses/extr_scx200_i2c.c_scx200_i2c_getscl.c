
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scl ;
 int scx200_gpio_get (int ) ;

__attribute__((used)) static int scx200_i2c_getscl(void *data)
{
 return scx200_gpio_get(scl);
}
