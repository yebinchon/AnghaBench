
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomo {scalar_t__ irq; int base; int dev; } ;


 scalar_t__ NO_IRQ ;
 int device_for_each_child (int ,int *,int ) ;
 int iounmap (int ) ;
 int kfree (struct locomo*) ;
 int locomo_remove_child ;
 int set_irq_chained_handler (scalar_t__,int *) ;
 int set_irq_data (scalar_t__,int *) ;

__attribute__((used)) static void __locomo_remove(struct locomo *lchip)
{
 device_for_each_child(lchip->dev, ((void*)0), locomo_remove_child);

 if (lchip->irq != NO_IRQ) {
  set_irq_chained_handler(lchip->irq, ((void*)0));
  set_irq_data(lchip->irq, ((void*)0));
 }

 iounmap(lchip->base);
 kfree(lchip);
}
