
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ g_state; } ;
struct TYPE_3__ {scalar_t__ txp_ofdm; } ;
struct ath5k_hw {TYPE_2__ ah_gain; TYPE_1__ ah_txpower; } ;


 int AR5K_PHY_PAPD_PROBE ;
 int AR5K_PHY_PAPD_PROBE_TXPOWER ;
 int AR5K_PHY_PAPD_PROBE_TX_NEXT ;
 int AR5K_REG_SM (scalar_t__,int ) ;
 scalar_t__ AR5K_RFGAIN_ACTIVE ;
 scalar_t__ AR5K_RFGAIN_READ_REQUESTED ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

__attribute__((used)) static void
ath5k_hw_request_rfgain_probe(struct ath5k_hw *ah)
{



 if (ah->ah_gain.g_state != AR5K_RFGAIN_ACTIVE)
  return;



 ath5k_hw_reg_write(ah, AR5K_REG_SM(ah->ah_txpower.txp_ofdm - 4,
   AR5K_PHY_PAPD_PROBE_TXPOWER) |
   AR5K_PHY_PAPD_PROBE_TX_NEXT, AR5K_PHY_PAPD_PROBE);

 ah->ah_gain.g_state = AR5K_RFGAIN_READ_REQUESTED;

}
