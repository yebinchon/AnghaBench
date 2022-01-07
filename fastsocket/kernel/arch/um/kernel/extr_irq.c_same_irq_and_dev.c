
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fd {scalar_t__ irq; scalar_t__ id; } ;
struct irq_and_dev {scalar_t__ irq; scalar_t__ dev; } ;



__attribute__((used)) static int same_irq_and_dev(struct irq_fd *irq, void *d)
{
 struct irq_and_dev *data = d;

 return ((irq->irq == data->irq) && (irq->id == data->dev));
}
