
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {scalar_t__ pen_irq; } ;


 int gpio_free (scalar_t__) ;
 scalar_t__ irq ;
 scalar_t__ pen_int ;

__attribute__((used)) static void wm97xx_acc_shutdown(struct wm97xx *wm)
{

 if (pen_int) {
  if (irq)
   gpio_free(irq);
  wm->pen_irq = 0;
 }
}
