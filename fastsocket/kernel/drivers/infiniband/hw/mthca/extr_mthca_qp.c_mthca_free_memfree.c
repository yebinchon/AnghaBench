
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int db_index; } ;
struct TYPE_3__ {int db_index; } ;
struct mthca_qp {TYPE_2__ rq; TYPE_1__ sq; } ;
struct mthca_dev {int dummy; } ;


 int MTHCA_DB_TYPE_RQ ;
 int MTHCA_DB_TYPE_SQ ;
 int mthca_free_db (struct mthca_dev*,int ,int ) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;

__attribute__((used)) static void mthca_free_memfree(struct mthca_dev *dev,
          struct mthca_qp *qp)
{
 if (mthca_is_memfree(dev)) {
  mthca_free_db(dev, MTHCA_DB_TYPE_SQ, qp->sq.db_index);
  mthca_free_db(dev, MTHCA_DB_TYPE_RQ, qp->rq.db_index);
 }
}
