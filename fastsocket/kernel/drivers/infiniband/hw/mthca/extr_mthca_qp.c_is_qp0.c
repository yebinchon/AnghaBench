
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_qp {scalar_t__ qpn; } ;
struct TYPE_2__ {scalar_t__ sqp_start; } ;
struct mthca_dev {TYPE_1__ qp_table; } ;



__attribute__((used)) static int is_qp0(struct mthca_dev *dev, struct mthca_qp *qp)
{
 return qp->qpn >= dev->qp_table.sqp_start &&
  qp->qpn <= dev->qp_table.sqp_start + 1;
}
