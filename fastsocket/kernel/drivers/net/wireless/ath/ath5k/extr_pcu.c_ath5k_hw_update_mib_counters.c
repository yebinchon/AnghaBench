
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_statistics {int beacons; int fcs_error; int rts_ok; int rts_fail; int ack_fail; } ;
struct ath5k_hw {struct ath5k_statistics stats; } ;


 int AR5K_ACK_FAIL ;
 int AR5K_BEACON_CNT ;
 int AR5K_FCS_FAIL ;
 int AR5K_RTS_FAIL ;
 int AR5K_RTS_OK ;
 scalar_t__ ath5k_hw_reg_read (struct ath5k_hw*,int ) ;

void
ath5k_hw_update_mib_counters(struct ath5k_hw *ah)
{
 struct ath5k_statistics *stats = &ah->stats;


 stats->ack_fail += ath5k_hw_reg_read(ah, AR5K_ACK_FAIL);
 stats->rts_fail += ath5k_hw_reg_read(ah, AR5K_RTS_FAIL);
 stats->rts_ok += ath5k_hw_reg_read(ah, AR5K_RTS_OK);
 stats->fcs_error += ath5k_hw_reg_read(ah, AR5K_FCS_FAIL);
 stats->beacons += ath5k_hw_reg_read(ah, AR5K_BEACON_CNT);
}
