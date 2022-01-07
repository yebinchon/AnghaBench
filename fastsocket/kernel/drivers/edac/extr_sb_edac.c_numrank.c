
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int RANK_CNT_BITS (int ) ;
 int debugf0 (char*,int,unsigned int,int ) ;

__attribute__((used)) static inline int numrank(u32 mtr)
{
 int ranks = (1 << RANK_CNT_BITS(mtr));

 if (ranks > 4) {
  debugf0("Invalid number of ranks: %d (max = 4) raw value = %x (%04x)",
   ranks, (unsigned int)RANK_CNT_BITS(mtr), mtr);
  return -EINVAL;
 }

 return ranks;
}
