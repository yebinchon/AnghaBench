
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_mtt {int dummy; } ;
struct TYPE_2__ {int mtt_buddy; } ;
struct mthca_dev {TYPE_1__ mr_table; } ;


 struct mthca_mtt* __mthca_alloc_mtt (struct mthca_dev*,int,int *) ;

struct mthca_mtt *mthca_alloc_mtt(struct mthca_dev *dev, int size)
{
 return __mthca_alloc_mtt(dev, size, &dev->mr_table.mtt_buddy);
}
