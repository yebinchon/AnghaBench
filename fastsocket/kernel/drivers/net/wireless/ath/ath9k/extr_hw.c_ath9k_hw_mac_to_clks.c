
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {int clockrate; } ;


 struct ath_common* ath9k_hw_common (struct ath_hw*) ;

__attribute__((used)) static u32 ath9k_hw_mac_to_clks(struct ath_hw *ah, u32 usecs)
{
 struct ath_common *common = ath9k_hw_common(ah);

 return usecs * common->clockrate;
}
