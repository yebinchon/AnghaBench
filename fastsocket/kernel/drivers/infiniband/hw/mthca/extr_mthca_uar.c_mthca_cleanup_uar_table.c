
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alloc; } ;
struct mthca_dev {TYPE_1__ uar_table; } ;


 int mthca_alloc_cleanup (int *) ;
 int mthca_cleanup_db_tab (struct mthca_dev*) ;

void mthca_cleanup_uar_table(struct mthca_dev *dev)
{
 mthca_cleanup_db_tab(dev);


 mthca_alloc_cleanup(&dev->uar_table.alloc);
}
