
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GPIO_SDA ;
 int gpio_line_set (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void set_sda(u8 value)
{
 gpio_line_set(GPIO_SDA, !!value);
 udelay(3);
}
