
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwch_dev {int lock; int qpidr; } ;


 int disable_qp_db ;
 int idr_for_each (int *,int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void disable_dbs(struct iwch_dev *rnicp)
{
 spin_lock_irq(&rnicp->lock);
 idr_for_each(&rnicp->qpidr, disable_qp_db, ((void*)0));
 spin_unlock_irq(&rnicp->lock);
}
