
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_beacon_response_time; int sw_beacon_response_time; int ack_6mb; int analog_shiftreg; int enable_ani; int rx_intr_mitigation; int pcieSerDesWrite; int serialize_regmode; void*** spurchans; scalar_t__ pcie_waen; scalar_t__ pcie_clock_req; scalar_t__ cwm_ignore_extcca; scalar_t__ additional_swba_backoff; } ;
struct ath_hw {TYPE_1__ config; } ;


 int AR_EEPROM_MODAL_SPURS ;
 void* AR_NO_SPUR ;
 int SER_REG_MODE_AUTO ;
 int num_possible_cpus () ;

__attribute__((used)) static void ath9k_hw_init_config(struct ath_hw *ah)
{
 int i;

 ah->config.dma_beacon_response_time = 1;
 ah->config.sw_beacon_response_time = 6;
 ah->config.additional_swba_backoff = 0;
 ah->config.ack_6mb = 0x0;
 ah->config.cwm_ignore_extcca = 0;
 ah->config.pcie_clock_req = 0;
 ah->config.pcie_waen = 0;
 ah->config.analog_shiftreg = 1;
 ah->config.enable_ani = 1;

 for (i = 0; i < AR_EEPROM_MODAL_SPURS; i++) {
  ah->config.spurchans[i][0] = AR_NO_SPUR;
  ah->config.spurchans[i][1] = AR_NO_SPUR;
 }

 ah->config.rx_intr_mitigation = 1;
 ah->config.pcieSerDesWrite = 1;
 if (num_possible_cpus() > 1)
  ah->config.serialize_regmode = SER_REG_MODE_AUTO;
}
