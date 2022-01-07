
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int alloc; } ;
struct TYPE_3__ {scalar_t__ reserved_uars; scalar_t__ num_uars; } ;
struct mthca_dev {TYPE_2__ uar_table; TYPE_1__ limits; } ;


 int mthca_alloc_cleanup (int *) ;
 int mthca_alloc_init (int *,scalar_t__,scalar_t__,scalar_t__) ;
 int mthca_init_db_tab (struct mthca_dev*) ;

int mthca_init_uar_table(struct mthca_dev *dev)
{
 int ret;

 ret = mthca_alloc_init(&dev->uar_table.alloc,
          dev->limits.num_uars,
          dev->limits.num_uars - 1,
          dev->limits.reserved_uars + 1);
 if (ret)
  return ret;

 ret = mthca_init_db_tab(dev);
 if (ret)
  mthca_alloc_cleanup(&dev->uar_table.alloc);

 return ret;
}
