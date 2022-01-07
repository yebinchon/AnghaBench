
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_dev {int board; int * sd_ir; } ;






 int PCI_MSK_AV_CORE ;
 int PCI_MSK_IR ;
 int cx23885_irq_remove (struct cx23885_dev*,int ) ;
 int cx23888_ir_remove (struct cx23885_dev*) ;

void cx23885_ir_fini(struct cx23885_dev *dev)
{
 switch (dev->board) {
 case 129:
 case 130:
  cx23885_irq_remove(dev, PCI_MSK_IR);
  cx23888_ir_remove(dev);
  dev->sd_ir = ((void*)0);
  break;
 case 128:
 case 131:
  cx23885_irq_remove(dev, PCI_MSK_AV_CORE);

  dev->sd_ir = ((void*)0);
  break;
 }
}
