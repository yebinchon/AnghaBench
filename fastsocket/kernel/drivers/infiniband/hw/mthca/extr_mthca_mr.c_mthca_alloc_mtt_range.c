
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mtt_table; } ;
struct mthca_dev {TYPE_1__ mr_table; } ;
struct mthca_buddy {int dummy; } ;


 int mthca_buddy_alloc (struct mthca_buddy*,int) ;
 int mthca_buddy_free (struct mthca_buddy*,int,int) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 scalar_t__ mthca_table_get_range (struct mthca_dev*,int ,int,int) ;

__attribute__((used)) static u32 mthca_alloc_mtt_range(struct mthca_dev *dev, int order,
     struct mthca_buddy *buddy)
{
 u32 seg = mthca_buddy_alloc(buddy, order);

 if (seg == -1)
  return -1;

 if (mthca_is_memfree(dev))
  if (mthca_table_get_range(dev, dev->mr_table.mtt_table, seg,
       seg + (1 << order) - 1)) {
   mthca_buddy_free(buddy, seg, order);
   seg = -1;
  }

 return seg;
}
