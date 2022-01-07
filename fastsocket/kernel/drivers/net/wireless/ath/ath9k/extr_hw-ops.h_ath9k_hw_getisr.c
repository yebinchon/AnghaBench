
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int dummy; } ;
typedef enum ath9k_int { ____Placeholder_ath9k_int } ath9k_int ;
struct TYPE_2__ {int (* get_isr ) (struct ath_hw*,int*) ;} ;


 TYPE_1__* ath9k_hw_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*,int*) ;

__attribute__((used)) static inline bool ath9k_hw_getisr(struct ath_hw *ah, enum ath9k_int *masked)
{
 return ath9k_hw_ops(ah)->get_isr(ah, masked);
}
