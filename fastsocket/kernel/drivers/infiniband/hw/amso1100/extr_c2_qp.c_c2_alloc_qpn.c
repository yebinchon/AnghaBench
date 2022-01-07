
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct c2_qp {int qpn; } ;
struct TYPE_2__ {int lock; int last; int idr; } ;
struct c2_dev {TYPE_1__ qp_table; } ;


 int EAGAIN ;
 int GFP_KERNEL ;
 int idr_get_new_above (int *,struct c2_qp*,int ,int *) ;
 scalar_t__ idr_pre_get (int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int c2_alloc_qpn(struct c2_dev *c2dev, struct c2_qp *qp)
{
 int ret;

        do {
  spin_lock_irq(&c2dev->qp_table.lock);
  ret = idr_get_new_above(&c2dev->qp_table.idr, qp,
     c2dev->qp_table.last++, &qp->qpn);
  spin_unlock_irq(&c2dev->qp_table.lock);
        } while ((ret == -EAGAIN) &&
    idr_pre_get(&c2dev->qp_table.idr, GFP_KERNEL));
 return ret;
}
