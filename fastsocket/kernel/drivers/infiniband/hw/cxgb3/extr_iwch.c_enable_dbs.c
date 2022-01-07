
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwch_dev {int lock; int qpidr; } ;


 int enable_qp_db ;
 int idr_for_each (int *,int ,void*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void enable_dbs(struct iwch_dev *rnicp, int ring_db)
{
 spin_lock_irq(&rnicp->lock);
 idr_for_each(&rnicp->qpidr, enable_qp_db,
       (void *)(unsigned long)ring_db);
 spin_unlock_irq(&rnicp->lock);
}
