
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int idr; } ;
struct c2_dev {TYPE_1__ qp_table; } ;


 int idr_remove (int *,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void c2_free_qpn(struct c2_dev *c2dev, int qpn)
{
 spin_lock_irq(&c2dev->qp_table.lock);
 idr_remove(&c2dev->qp_table.idr, qpn);
 spin_unlock_irq(&c2dev->qp_table.lock);
}
