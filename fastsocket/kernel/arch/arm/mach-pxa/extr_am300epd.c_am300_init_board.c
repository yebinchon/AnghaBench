
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct broadsheetfb_par {int dummy; } ;


 int am300_init_gpio_regs (struct broadsheetfb_par*) ;

__attribute__((used)) static int am300_init_board(struct broadsheetfb_par *par)
{
 return am300_init_gpio_regs(par);
}
