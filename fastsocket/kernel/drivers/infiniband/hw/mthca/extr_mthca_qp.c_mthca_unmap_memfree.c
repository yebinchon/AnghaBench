
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_qp {int qpn; } ;
struct TYPE_2__ {int rdb_shift; int qp_table; int eqp_table; int rdb_table; } ;
struct mthca_dev {TYPE_1__ qp_table; } ;


 int mthca_table_put (struct mthca_dev*,int ,int) ;

__attribute__((used)) static void mthca_unmap_memfree(struct mthca_dev *dev,
    struct mthca_qp *qp)
{
 mthca_table_put(dev, dev->qp_table.rdb_table,
   qp->qpn << dev->qp_table.rdb_shift);
 mthca_table_put(dev, dev->qp_table.eqp_table, qp->qpn);
 mthca_table_put(dev, dev->qp_table.qp_table, qp->qpn);
}
