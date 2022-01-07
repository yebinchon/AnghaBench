
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int dummy; } ;


 int atmel_wm97xx_acc_pen_up (struct wm97xx*) ;

__attribute__((used)) static void atmel_wm97xx_pen_timer(unsigned long data)
{
 atmel_wm97xx_acc_pen_up((struct wm97xx *)data);
}
