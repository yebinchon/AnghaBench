
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wanted; int dev; } ;
typedef TYPE_1__ ppa_struct ;


 int arbitration_lock ;
 int parport_release (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ppa_pb_dismiss(ppa_struct *dev)
{
 unsigned long flags;
 int wanted;
 spin_lock_irqsave(&arbitration_lock, flags);
 wanted = dev->wanted;
 dev->wanted = 0;
 spin_unlock_irqrestore(&arbitration_lock, flags);
 if (!wanted)
  parport_release(dev->dev);
}
