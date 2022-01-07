
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_irq_data {int mask; int handler_data; int (* handler ) (int,int ) ;} ;
struct wm831x {int dev; } ;


 int __wm831x_disable_irq (struct wm831x*,int) ;
 int dev_err (int ,char*,int) ;
 int irq_data_to_status_reg (struct wm831x_irq_data*) ;
 int stub1 (int,int ) ;
 struct wm831x_irq_data* wm831x_irqs ;
 int wm831x_reg_write (struct wm831x*,int ,int ) ;

__attribute__((used)) static void wm831x_handle_irq(struct wm831x *wm831x, int irq, int status)
{
 struct wm831x_irq_data *irq_data = &wm831x_irqs[irq];

 if (irq_data->handler) {
  irq_data->handler(irq, irq_data->handler_data);
  wm831x_reg_write(wm831x, irq_data_to_status_reg(irq_data),
     irq_data->mask);
 } else {
  dev_err(wm831x->dev, "Unhandled IRQ %d, masking\n", irq);
  __wm831x_disable_irq(wm831x, irq);
 }
}
