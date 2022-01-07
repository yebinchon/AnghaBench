
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cx231xx {int dummy; } ;


 int CX23417_GPIO_MASK ;
 int cx231xx_send_gpio_cmd (struct cx231xx*,int,int *,int,int ,int ) ;

__attribute__((used)) static int setITVCReg(struct cx231xx *dev, u32 gpio_direction, u32 value)
{
 int status = 0;
 u32 _gpio_direction = 0;

 _gpio_direction = _gpio_direction & CX23417_GPIO_MASK;
 _gpio_direction = _gpio_direction|gpio_direction;
 status = cx231xx_send_gpio_cmd(dev, _gpio_direction,
    (u8 *)&value, 4, 0, 0);
 return status;
}
