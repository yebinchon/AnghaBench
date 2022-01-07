
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {int dummy; } ;


 int AR5K_MCAST_FILTER0 ;
 int AR5K_MCAST_FILTER1 ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int ,int ) ;

void
ath5k_hw_set_mcast_filter(struct ath5k_hw *ah, u32 filter0, u32 filter1)
{
 ath5k_hw_reg_write(ah, filter0, AR5K_MCAST_FILTER0);
 ath5k_hw_reg_write(ah, filter1, AR5K_MCAST_FILTER1);
}
