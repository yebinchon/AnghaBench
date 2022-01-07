
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_qpn_table {int last; int nmaps; int mask; int lock; } ;
struct qib_devdata {int qpn_mask; } ;


 int spin_lock_init (int *) ;

void qib_init_qpn_table(struct qib_devdata *dd, struct qib_qpn_table *qpt)
{
 spin_lock_init(&qpt->lock);
 qpt->last = 1;
 qpt->nmaps = 1;
 qpt->mask = dd->qpn_mask;
}
