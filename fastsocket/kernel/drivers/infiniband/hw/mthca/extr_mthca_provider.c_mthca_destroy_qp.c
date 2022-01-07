
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ib_qp {int device; TYPE_3__* uobject; } ;
struct TYPE_8__ {int db_index; } ;
struct TYPE_7__ {int db_index; } ;
struct TYPE_11__ {TYPE_2__ rq; TYPE_1__ sq; } ;
struct TYPE_10__ {int db_tab; int uar; } ;
struct TYPE_9__ {int context; } ;


 int kfree (struct ib_qp*) ;
 int mthca_free_qp (int ,TYPE_5__*) ;
 int mthca_unmap_user_db (int ,int *,int ,int ) ;
 int to_mdev (int ) ;
 TYPE_5__* to_mqp (struct ib_qp*) ;
 TYPE_4__* to_mucontext (int ) ;

__attribute__((used)) static int mthca_destroy_qp(struct ib_qp *qp)
{
 if (qp->uobject) {
  mthca_unmap_user_db(to_mdev(qp->device),
        &to_mucontext(qp->uobject->context)->uar,
        to_mucontext(qp->uobject->context)->db_tab,
        to_mqp(qp)->sq.db_index);
  mthca_unmap_user_db(to_mdev(qp->device),
        &to_mucontext(qp->uobject->context)->uar,
        to_mucontext(qp->uobject->context)->db_tab,
        to_mqp(qp)->rq.db_index);
 }
 mthca_free_qp(to_mdev(qp->device), to_mqp(qp));
 kfree(qp);
 return 0;
}
