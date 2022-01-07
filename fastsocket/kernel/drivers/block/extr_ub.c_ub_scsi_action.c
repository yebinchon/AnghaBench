
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_dev {int lock; } ;


 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ub_scsi_dispatch (struct ub_dev*) ;

__attribute__((used)) static void ub_scsi_action(unsigned long _dev)
{
 struct ub_dev *sc = (struct ub_dev *) _dev;
 unsigned long flags;

 spin_lock_irqsave(sc->lock, flags);
 ub_scsi_dispatch(sc);
 spin_unlock_irqrestore(sc->lock, flags);
}
