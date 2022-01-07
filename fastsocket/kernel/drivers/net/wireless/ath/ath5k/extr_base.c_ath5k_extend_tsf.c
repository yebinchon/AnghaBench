
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ath5k_hw {int dummy; } ;


 int ath5k_hw_get_tsf64 (struct ath5k_hw*) ;

__attribute__((used)) static inline u64 ath5k_extend_tsf(struct ath5k_hw *ah, u32 rstamp)
{
 u64 tsf = ath5k_hw_get_tsf64(ah);

 if ((tsf & 0x7fff) < rstamp)
  tsf -= 0x8000;

 return (tsf & ~0x7fff) | rstamp;
}
