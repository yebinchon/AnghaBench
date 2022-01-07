
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int irq; } ;


 void disable_irq (int ) ;

__attribute__((used)) static void wl1251_disable_line_irq(struct wl1251 *wl)
{
 return disable_irq(wl->irq);
}
