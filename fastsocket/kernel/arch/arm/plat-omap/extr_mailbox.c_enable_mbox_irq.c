
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_mbox {TYPE_1__* ops; } ;
typedef int omap_mbox_irq_t ;
struct TYPE_2__ {int (* enable_irq ) (struct omap_mbox*,int ) ;} ;


 int stub1 (struct omap_mbox*,int ) ;

__attribute__((used)) static inline void enable_mbox_irq(struct omap_mbox *mbox, omap_mbox_irq_t irq)
{
 mbox->ops->enable_irq(mbox, irq);
}
