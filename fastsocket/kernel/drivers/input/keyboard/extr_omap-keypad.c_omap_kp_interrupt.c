
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_kp {int rows; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ OMAP1_MPUIO_BASE ;
 scalar_t__ OMAP_MPUIO_KBD_MASKIT ;
 scalar_t__ cpu_is_omap24xx () ;
 int disable_irq (int) ;
 int disable_irq_nosync (int) ;
 int gpio_to_irq (int ) ;
 int kp_tasklet ;
 int omap_writew (int,scalar_t__) ;
 int * row_gpios ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t omap_kp_interrupt(int irq, void *dev_id)
{
 struct omap_kp *omap_kp = dev_id;


 if (cpu_is_omap24xx()) {
  int i;

  for (i = 0; i < omap_kp->rows; i++) {
   int gpio_irq = gpio_to_irq(row_gpios[i]);






   if (gpio_irq == irq)
    disable_irq_nosync(gpio_irq);
   else
    disable_irq(gpio_irq);
  }
 } else

  omap_writew(1, OMAP1_MPUIO_BASE + OMAP_MPUIO_KBD_MASKIT);

 tasklet_schedule(&kp_tasklet);

 return IRQ_HANDLED;
}
