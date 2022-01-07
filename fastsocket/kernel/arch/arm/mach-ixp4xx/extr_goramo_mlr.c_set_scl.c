
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GPIO_SCL ;
 int gpio_line_set (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void set_scl(u8 value)
{
 gpio_line_set(GPIO_SCL, !!value);
 udelay(3);
}
