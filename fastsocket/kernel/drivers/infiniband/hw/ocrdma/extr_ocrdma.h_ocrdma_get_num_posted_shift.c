
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocrdma_qp {int id; TYPE_2__* dev; } ;
struct TYPE_3__ {scalar_t__ dev_family; } ;
struct TYPE_4__ {TYPE_1__ nic_info; } ;


 scalar_t__ OCRDMA_GEN2_FAMILY ;

__attribute__((used)) static inline int ocrdma_get_num_posted_shift(struct ocrdma_qp *qp)
{
 return ((qp->dev->nic_info.dev_family == OCRDMA_GEN2_FAMILY &&
   qp->id < 64) ? 24 : 16);
}
