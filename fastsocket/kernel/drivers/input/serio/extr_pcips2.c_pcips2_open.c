
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {struct pcips2_data* port_data; } ;
struct pcips2_data {int base; TYPE_1__* dev; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_SHARED ;
 int PS2_CTRL_ENABLE ;
 int PS2_CTRL_RXIRQ ;
 int outb (int,int ) ;
 int pcips2_flush_input (struct pcips2_data*) ;
 int pcips2_interrupt ;
 int request_irq (int ,int ,int ,char*,struct pcips2_data*) ;

__attribute__((used)) static int pcips2_open(struct serio *io)
{
 struct pcips2_data *ps2if = io->port_data;
 int ret, val = 0;

 outb(PS2_CTRL_ENABLE, ps2if->base);
 pcips2_flush_input(ps2if);

 ret = request_irq(ps2if->dev->irq, pcips2_interrupt, IRQF_SHARED,
     "pcips2", ps2if);
 if (ret == 0)
  val = PS2_CTRL_ENABLE | PS2_CTRL_RXIRQ;

 outb(val, ps2if->base);

 return ret;
}
