
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w100fb_par {TYPE_1__* mode; } ;
struct TYPE_2__ {int xres; } ;


 int W100_GPIO_PORT_A ;
 unsigned long w100fb_gpio_read (int ) ;
 int w100fb_gpio_write (int ,unsigned long) ;

__attribute__((used)) static void e800_tg_change(struct w100fb_par *par)
{
 unsigned long tmp;

 tmp = w100fb_gpio_read(W100_GPIO_PORT_A);
 if (par->mode->xres == 480)
  tmp |= 0x100;
 else
  tmp &= ~0x100;
 w100fb_gpio_write(W100_GPIO_PORT_A, tmp);
}
