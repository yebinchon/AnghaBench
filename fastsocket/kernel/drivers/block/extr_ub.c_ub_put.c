
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_dev {scalar_t__ openc; int poison; } ;


 scalar_t__ atomic_read (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ub_cleanup (struct ub_dev*) ;
 int ub_lock ;

__attribute__((used)) static void ub_put(struct ub_dev *sc)
{
 unsigned long flags;

 spin_lock_irqsave(&ub_lock, flags);
 --sc->openc;
 if (sc->openc == 0 && atomic_read(&sc->poison)) {
  spin_unlock_irqrestore(&ub_lock, flags);
  ub_cleanup(sc);
 } else {
  spin_unlock_irqrestore(&ub_lock, flags);
 }
}
