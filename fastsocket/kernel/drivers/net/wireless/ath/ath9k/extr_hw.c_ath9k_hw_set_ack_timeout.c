
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_TIME_OUT ;
 int AR_TIME_OUT_ACK ;
 scalar_t__ MS (int,int ) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int ) ;
 int ath9k_hw_mac_to_clks (struct ath_hw*,int ) ;
 int min (int ,int ) ;

__attribute__((used)) static void ath9k_hw_set_ack_timeout(struct ath_hw *ah, u32 us)
{
 u32 val = ath9k_hw_mac_to_clks(ah, us);
 val = min(val, (u32) MS(0xFFFFFFFF, AR_TIME_OUT_ACK));
 REG_RMW_FIELD(ah, AR_TIME_OUT, AR_TIME_OUT_ACK, val);
}
