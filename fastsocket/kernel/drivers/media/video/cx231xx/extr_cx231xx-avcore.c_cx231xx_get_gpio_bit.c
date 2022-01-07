
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cx231xx {int dummy; } ;


 int cx231xx_send_gpio_cmd (struct cx231xx*,int ,int *,int,int ,int) ;

int cx231xx_get_gpio_bit(struct cx231xx *dev, u32 gpio_bit, u8 *gpio_val)
{
 int status = 0;

 status = cx231xx_send_gpio_cmd(dev, gpio_bit, gpio_val, 4, 0, 1);

 return status;
}
