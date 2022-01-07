
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_common {unsigned int clockrate; } ;
struct ath5k_hw {int dummy; } ;


 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;

unsigned int
ath5k_hw_htoclock(struct ath5k_hw *ah, unsigned int usec)
{
 struct ath_common *common = ath5k_hw_common(ah);
 return usec * common->clockrate;
}
