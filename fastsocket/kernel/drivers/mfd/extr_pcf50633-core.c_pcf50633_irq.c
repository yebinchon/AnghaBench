
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633 {int irq_work; int work_queue; int irq; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*) ;
 int disable_irq_nosync (int ) ;
 int get_device (int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t pcf50633_irq(int irq, void *data)
{
 struct pcf50633 *pcf = data;

 dev_dbg(pcf->dev, "pcf50633_irq\n");

 get_device(pcf->dev);
 disable_irq_nosync(pcf->irq);
 queue_work(pcf->work_queue, &pcf->irq_work);

 return IRQ_HANDLED;
}
