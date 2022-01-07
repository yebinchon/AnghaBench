
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_irq_data {int reg; int mask; } ;
struct wm831x {int * irq_masks; } ;


 int irq_data_to_mask_reg (struct wm831x_irq_data*) ;
 struct wm831x_irq_data* wm831x_irqs ;
 int wm831x_reg_write (struct wm831x*,int ,int ) ;

__attribute__((used)) static void __wm831x_disable_irq(struct wm831x *wm831x, int irq)
{
 struct wm831x_irq_data *irq_data = &wm831x_irqs[irq];

 wm831x->irq_masks[irq_data->reg - 1] |= irq_data->mask;
 wm831x_reg_write(wm831x, irq_data_to_mask_reg(irq_data),
    wm831x->irq_masks[irq_data->reg - 1]);
}
