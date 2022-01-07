
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct orinoco_private {int lock; TYPE_2__ hw; } ;
struct TYPE_3__ {int (* lock_irq ) (int *) ;} ;


 int stub1 (int *) ;

__attribute__((used)) static inline void orinoco_lock_irq(struct orinoco_private *priv)
{
 priv->hw.ops->lock_irq(&priv->lock);
}
