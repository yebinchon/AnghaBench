
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int radar_conf; } ;
struct TYPE_2__ {int (* set_radar_params ) (struct ath_hw*,int *) ;} ;


 TYPE_1__* ath9k_hw_private_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*,int *) ;

__attribute__((used)) static inline void ath9k_hw_set_radar_params(struct ath_hw *ah)
{
 if (!ath9k_hw_private_ops(ah)->set_radar_params)
  return;

 ath9k_hw_private_ops(ah)->set_radar_params(ah, &ah->radar_conf);
}
