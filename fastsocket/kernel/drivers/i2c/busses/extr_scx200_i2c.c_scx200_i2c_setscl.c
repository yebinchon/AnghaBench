
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scl ;
 int scx200_gpio_set (int ,int) ;

__attribute__((used)) static void scx200_i2c_setscl(void *data, int state)
{
 scx200_gpio_set(scl, state);
}
