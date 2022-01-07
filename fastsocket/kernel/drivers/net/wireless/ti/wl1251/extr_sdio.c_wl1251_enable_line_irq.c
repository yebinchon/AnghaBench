
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int irq; } ;


 void enable_irq (int ) ;

__attribute__((used)) static void wl1251_enable_line_irq(struct wl1251 *wl)
{
 return enable_irq(wl->irq);
}
