
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ath9k_mib_stats {int beacons; int rts_good; int fcs_bad; int rts_bad; int ackrcv_bad; } ;


 int AR_ACK_FAIL ;
 int AR_BEACON_CNT ;
 int AR_FCS_FAIL ;
 int AR_RTS_FAIL ;
 int AR_RTS_OK ;
 scalar_t__ REG_READ (struct ath_hw*,int ) ;

__attribute__((used)) static void ath9k_hw_update_mibstats(struct ath_hw *ah,
         struct ath9k_mib_stats *stats)
{
 stats->ackrcv_bad += REG_READ(ah, AR_ACK_FAIL);
 stats->rts_bad += REG_READ(ah, AR_RTS_FAIL);
 stats->fcs_bad += REG_READ(ah, AR_FCS_FAIL);
 stats->rts_good += REG_READ(ah, AR_RTS_OK);
 stats->beacons += REG_READ(ah, AR_BEACON_CNT);
}
