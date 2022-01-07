
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int alloc; int cq; } ;
struct TYPE_3__ {int num_cqs; } ;
struct mthca_dev {TYPE_2__ cq_table; TYPE_1__ limits; } ;


 int mthca_alloc_cleanup (int *) ;
 int mthca_array_cleanup (int *,int ) ;

void mthca_cleanup_cq_table(struct mthca_dev *dev)
{
 mthca_array_cleanup(&dev->cq_table.cq, dev->limits.num_cqs);
 mthca_alloc_cleanup(&dev->cq_table.alloc);
}
