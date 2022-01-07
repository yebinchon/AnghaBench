
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mpt_alloc; int mpt_table; } ;
struct mthca_dev {TYPE_1__ mr_table; } ;


 int key_to_hw_index (struct mthca_dev*,int ) ;
 int mthca_free (int *,int ) ;
 int mthca_table_put (struct mthca_dev*,int ,int ) ;

__attribute__((used)) static void mthca_free_region(struct mthca_dev *dev, u32 lkey)
{
 mthca_table_put(dev, dev->mr_table.mpt_table,
   key_to_hw_index(dev, lkey));

 mthca_free(&dev->mr_table.mpt_alloc, key_to_hw_index(dev, lkey));
}
