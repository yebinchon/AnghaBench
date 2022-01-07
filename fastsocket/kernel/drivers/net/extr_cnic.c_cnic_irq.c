
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_local {int (* ack_int ) (struct cnic_dev*) ;} ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int cnic_doirq (struct cnic_dev*) ;
 int stub1 (struct cnic_dev*) ;

__attribute__((used)) static irqreturn_t cnic_irq(int irq, void *dev_instance)
{
 struct cnic_dev *dev = dev_instance;
 struct cnic_local *cp = dev->cnic_priv;

 if (cp->ack_int)
  cp->ack_int(dev);

 cnic_doirq(dev);

 return IRQ_HANDLED;
}
