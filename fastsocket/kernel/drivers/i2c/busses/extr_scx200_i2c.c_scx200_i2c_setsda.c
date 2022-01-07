
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scx200_gpio_set (int ,int) ;
 int sda ;

__attribute__((used)) static void scx200_i2c_setsda(void *data, int state)
{
 scx200_gpio_set(sda, state);
}
