
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_mtt {int first_seg; scalar_t__ order; struct mthca_buddy* buddy; } ;
struct TYPE_2__ {int mtt_seg_size; } ;
struct mthca_dev {TYPE_1__ limits; } ;
struct mthca_buddy {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct mthca_mtt* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int kfree (struct mthca_mtt*) ;
 struct mthca_mtt* kmalloc (int,int ) ;
 int mthca_alloc_mtt_range (struct mthca_dev*,scalar_t__,struct mthca_buddy*) ;

__attribute__((used)) static struct mthca_mtt *__mthca_alloc_mtt(struct mthca_dev *dev, int size,
        struct mthca_buddy *buddy)
{
 struct mthca_mtt *mtt;
 int i;

 if (size <= 0)
  return ERR_PTR(-EINVAL);

 mtt = kmalloc(sizeof *mtt, GFP_KERNEL);
 if (!mtt)
  return ERR_PTR(-ENOMEM);

 mtt->buddy = buddy;
 mtt->order = 0;
 for (i = dev->limits.mtt_seg_size / 8; i < size; i <<= 1)
  ++mtt->order;

 mtt->first_seg = mthca_alloc_mtt_range(dev, mtt->order, buddy);
 if (mtt->first_seg == -1) {
  kfree(mtt);
  return ERR_PTR(-ENOMEM);
 }

 return mtt;
}
