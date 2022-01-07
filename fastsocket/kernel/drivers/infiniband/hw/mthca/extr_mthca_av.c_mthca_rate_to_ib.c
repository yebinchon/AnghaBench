
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int stat_rate_support; } ;
struct mthca_dev {int * rate; TYPE_1__ limits; } ;
typedef enum ib_rate { ____Placeholder_ib_rate } ib_rate ;


 int IB_RATE_2_5_GBPS ;
 int memfree_rate_to_ib (int,int ) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 int tavor_rate_to_ib (int,int ) ;

enum ib_rate mthca_rate_to_ib(struct mthca_dev *dev, u8 mthca_rate, u8 port)
{
 if (mthca_is_memfree(dev)) {

  if (dev->limits.stat_rate_support == 0x3 && mthca_rate)
   return IB_RATE_2_5_GBPS;

  return memfree_rate_to_ib(mthca_rate, dev->rate[port - 1]);
 } else
  return tavor_rate_to_ib(mthca_rate, dev->rate[port - 1]);
}
