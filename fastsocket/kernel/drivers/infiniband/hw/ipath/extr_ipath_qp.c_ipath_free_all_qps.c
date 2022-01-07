
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ipath_qp_table {size_t max; TYPE_1__* map; int lock; struct ipath_qp** table; } ;
struct ipath_qp {struct ipath_qp* next; } ;
struct TYPE_2__ {scalar_t__ page; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int free_page (unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned ipath_free_all_qps(struct ipath_qp_table *qpt)
{
 unsigned long flags;
 struct ipath_qp *qp;
 u32 n, qp_inuse = 0;

 spin_lock_irqsave(&qpt->lock, flags);
 for (n = 0; n < qpt->max; n++) {
  qp = qpt->table[n];
  qpt->table[n] = ((void*)0);

  for (; qp; qp = qp->next)
   qp_inuse++;
 }
 spin_unlock_irqrestore(&qpt->lock, flags);

 for (n = 0; n < ARRAY_SIZE(qpt->map); n++)
  if (qpt->map[n].page)
   free_page((unsigned long) qpt->map[n].page);
 return qp_inuse;
}
