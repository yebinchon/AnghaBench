
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wanted; int dev; } ;
typedef TYPE_1__ ppa_struct ;


 int arbitration_lock ;
 int got_it (TYPE_1__*) ;
 scalar_t__ parport_claim (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ppa_pb_claim(ppa_struct *dev)
{
 unsigned long flags;
 int res = 1;
 spin_lock_irqsave(&arbitration_lock, flags);
 if (parport_claim(dev->dev) == 0) {
  got_it(dev);
  res = 0;
 }
 dev->wanted = res;
 spin_unlock_irqrestore(&arbitration_lock, flags);
 return res;
}
