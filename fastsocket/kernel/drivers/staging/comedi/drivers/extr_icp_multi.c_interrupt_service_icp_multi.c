
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ io_addr; } ;
 scalar_t__ ICP_MULTI_INT_STAT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int Status_IRQ ;
 TYPE_1__* devpriv ;
 int printk (char*,...) ;
 int readw (scalar_t__) ;

__attribute__((used)) static irqreturn_t interrupt_service_icp_multi(int irq, void *d)
{
 struct comedi_device *dev = d;
 int int_no;







 int_no = readw(devpriv->io_addr + ICP_MULTI_INT_STAT) & Status_IRQ;
 if (!int_no)

  return IRQ_NONE;







 switch (int_no) {
 case 135:
  break;
 case 130:
  break;
 case 128:
  break;
 case 129:
  break;
 case 134:
  break;
 case 133:
  break;
 case 132:
  break;
 case 131:
  break;
 default:
  break;

 }




 return IRQ_HANDLED;
}
