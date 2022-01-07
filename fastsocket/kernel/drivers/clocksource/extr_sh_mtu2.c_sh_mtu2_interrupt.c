
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* event_handler ) (TYPE_1__*) ;} ;
struct sh_mtu2_priv {TYPE_1__ ced; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TSR ;
 int sh_mtu2_read (struct sh_mtu2_priv*,int ) ;
 int sh_mtu2_write (struct sh_mtu2_priv*,int ,int) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t sh_mtu2_interrupt(int irq, void *dev_id)
{
 struct sh_mtu2_priv *p = dev_id;


 sh_mtu2_read(p, TSR);
 sh_mtu2_write(p, TSR, 0xfe);


 p->ced.event_handler(&p->ced);
 return IRQ_HANDLED;
}
