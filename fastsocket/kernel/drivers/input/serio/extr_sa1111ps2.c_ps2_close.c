
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {struct ps2if* port_data; } ;
struct ps2if {TYPE_1__* dev; scalar_t__ open; scalar_t__ base; } ;
struct TYPE_2__ {int * irq; } ;


 scalar_t__ SA1111_PS2CR ;
 int disable_irq_wake (int ) ;
 int free_irq (int ,struct ps2if*) ;
 int sa1111_disable_device (TYPE_1__*) ;
 int sa1111_writel (int ,scalar_t__) ;

__attribute__((used)) static void ps2_close(struct serio *io)
{
 struct ps2if *ps2if = io->port_data;

 sa1111_writel(0, ps2if->base + SA1111_PS2CR);

 disable_irq_wake(ps2if->dev->irq[0]);

 ps2if->open = 0;

 free_irq(ps2if->dev->irq[1], ps2if);
 free_irq(ps2if->dev->irq[0], ps2if);

 sa1111_disable_device(ps2if->dev);
}
