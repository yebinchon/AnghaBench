
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ctr; int ecr; } ;
struct TYPE_6__ {TYPE_2__ pc; } ;
struct parport_state {TYPE_3__ u; } ;
struct pardevice {TYPE_1__* port; scalar_t__ irq_func; } ;
struct TYPE_4__ {scalar_t__ irq; } ;


 scalar_t__ PARPORT_IRQ_NONE ;

__attribute__((used)) static void parport_pc_init_state(struct pardevice *dev,
      struct parport_state *s)
{
 s->u.pc.ctr = 0xc;
 if (dev->irq_func &&
     dev->port->irq != PARPORT_IRQ_NONE)

  s->u.pc.ctr |= 0x10;

 s->u.pc.ecr = 0x34;

}
