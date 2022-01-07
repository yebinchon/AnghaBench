
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {struct pcips2_data* port_data; } ;
struct pcips2_data {TYPE_1__* dev; int base; } ;
struct TYPE_2__ {int irq; } ;


 int free_irq (int ,struct pcips2_data*) ;
 int outb (int ,int ) ;

__attribute__((used)) static void pcips2_close(struct serio *io)
{
 struct pcips2_data *ps2if = io->port_data;

 outb(0, ps2if->base);

 free_irq(ps2if->dev->irq, ps2if);
}
