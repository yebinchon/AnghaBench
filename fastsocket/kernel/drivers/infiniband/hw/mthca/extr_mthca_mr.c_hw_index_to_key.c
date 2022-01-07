
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mthca_dev {int dummy; } ;


 int arbel_hw_index_to_key (int ) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 int tavor_hw_index_to_key (int ) ;

__attribute__((used)) static inline u32 hw_index_to_key(struct mthca_dev *dev, u32 ind)
{
 if (mthca_is_memfree(dev))
  return arbel_hw_index_to_key(ind);
 else
  return tavor_hw_index_to_key(ind);
}
