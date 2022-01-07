
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ar9170_eeprom_modal {int const switchSettling; int const pgaDesiredSize; int const adcDesiredSize; int const txEndToXpaOff; int const txFrameToXpaOn; int const txEndToRxOn; int thresh62; int const* txRxAttenCh; int const* rxTxMarginCh; int const* bswMargin; int const* iqCalICh; int const* iqCalQCh; int xpdGain; int * antCtrlChain; int antCtrlCommon; } ;
struct TYPE_2__ {int rx_mask; struct ar9170_eeprom_modal* modal_header; } ;
struct ar9170 {TYPE_1__ eeprom; } ;


 int AR9170_PHY_DESIRED_SZ_ADC ;
 int AR9170_PHY_DESIRED_SZ_PGA ;
 int AR9170_PHY_GAIN_2GHZ_BSW_MARGIN ;
 int AR9170_PHY_GAIN_2GHZ_RXTX_MARGIN ;
 int AR9170_PHY_REG_CAL_CHAINMASK ;
 int AR9170_PHY_REG_DESIRED_SZ ;
 int AR9170_PHY_REG_GAIN_2GHZ ;
 int AR9170_PHY_REG_GAIN_2GHZ_CHAIN_2 ;
 int AR9170_PHY_REG_RF_CTL3 ;
 int AR9170_PHY_REG_RF_CTL4 ;
 int AR9170_PHY_REG_RXGAIN ;
 int AR9170_PHY_REG_RXGAIN_CHAIN_2 ;
 int AR9170_PHY_REG_RX_CHAINMASK ;
 int AR9170_PHY_REG_SETTLING ;
 int AR9170_PHY_REG_SWITCH_CHAIN_0 ;
 int AR9170_PHY_REG_SWITCH_CHAIN_2 ;
 int AR9170_PHY_REG_SWITCH_COM ;
 int AR9170_PHY_REG_TIMING_CTRL4 (int) ;
 int AR9170_PHY_REG_TPCRG1 ;
 int AR9170_PHY_RF_CTL3_TX_END_TO_A2_RX_ON ;
 int AR9170_PHY_RF_CTL4_FRAME_XPAA_ON ;
 int AR9170_PHY_RF_CTL4_FRAME_XPAB_ON ;
 int AR9170_PHY_RF_CTL4_TX_END_XPAA_OFF ;
 int AR9170_PHY_RF_CTL4_TX_END_XPAB_OFF ;
 int AR9170_PHY_RXGAIN_TXRX_ATTEN ;
 int AR9170_PHY_SETTLING_SWITCH ;
 int AR9170_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF ;
 int AR9170_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF ;
 int AR9170_PHY_TPCRG1_PD_GAIN_1 ;
 int AR9170_PHY_TPCRG1_PD_GAIN_2 ;
 int SET_VAL (int ,int,int const) ;
 int carl9170_def_val (int,int,int) ;
 int carl9170_regwrite (int,int) ;
 int carl9170_regwrite_begin (struct ar9170*) ;
 int carl9170_regwrite_finish () ;
 int carl9170_regwrite_result () ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int carl9170_init_phy_from_eeprom(struct ar9170 *ar,
    bool is_2ghz, bool is_40mhz)
{
 static const u8 xpd2pd[16] = {
  0x2, 0x2, 0x2, 0x1, 0x2, 0x2, 0x6, 0x2,
  0x2, 0x3, 0x7, 0x2, 0xb, 0x2, 0x2, 0x2
 };

 struct ar9170_eeprom_modal *m = &ar->eeprom.modal_header[is_2ghz];
 u32 val;

 carl9170_regwrite_begin(ar);


 carl9170_regwrite(AR9170_PHY_REG_SWITCH_COM,
  le32_to_cpu(m->antCtrlCommon));


 carl9170_regwrite(AR9170_PHY_REG_SWITCH_CHAIN_0,
  le32_to_cpu(m->antCtrlChain[0]));


 carl9170_regwrite(AR9170_PHY_REG_SWITCH_CHAIN_2,
  le32_to_cpu(m->antCtrlChain[1]));


 if (!is_40mhz) {
  val = carl9170_def_val(AR9170_PHY_REG_SETTLING,
         is_2ghz, is_40mhz);
  SET_VAL(AR9170_PHY_SETTLING_SWITCH, val, m->switchSettling);
  carl9170_regwrite(AR9170_PHY_REG_SETTLING, val);
 }


 val = carl9170_def_val(AR9170_PHY_REG_DESIRED_SZ, is_2ghz, is_40mhz);
 SET_VAL(AR9170_PHY_DESIRED_SZ_PGA, val, m->pgaDesiredSize);
 SET_VAL(AR9170_PHY_DESIRED_SZ_ADC, val, m->adcDesiredSize);
 carl9170_regwrite(AR9170_PHY_REG_DESIRED_SZ, val);


 val = carl9170_def_val(AR9170_PHY_REG_RF_CTL4, is_2ghz, is_40mhz);
 SET_VAL(AR9170_PHY_RF_CTL4_TX_END_XPAB_OFF, val, m->txEndToXpaOff);
 SET_VAL(AR9170_PHY_RF_CTL4_TX_END_XPAA_OFF, val, m->txEndToXpaOff);
 SET_VAL(AR9170_PHY_RF_CTL4_FRAME_XPAB_ON, val, m->txFrameToXpaOn);
 SET_VAL(AR9170_PHY_RF_CTL4_FRAME_XPAA_ON, val, m->txFrameToXpaOn);
 carl9170_regwrite(AR9170_PHY_REG_RF_CTL4, val);


 val = carl9170_def_val(AR9170_PHY_REG_RF_CTL3, is_2ghz, is_40mhz);
 SET_VAL(AR9170_PHY_RF_CTL3_TX_END_TO_A2_RX_ON, val, m->txEndToRxOn);
 carl9170_regwrite(AR9170_PHY_REG_RF_CTL3, val);


 val = carl9170_def_val(0x1c8864, is_2ghz, is_40mhz);
 val = (val & ~0x7f000) | (m->thresh62 << 12);
 carl9170_regwrite(0x1c8864, val);


 val = carl9170_def_val(AR9170_PHY_REG_RXGAIN, is_2ghz, is_40mhz);
 SET_VAL(AR9170_PHY_RXGAIN_TXRX_ATTEN, val, m->txRxAttenCh[0]);
 carl9170_regwrite(AR9170_PHY_REG_RXGAIN, val);


 val = carl9170_def_val(AR9170_PHY_REG_RXGAIN_CHAIN_2,
          is_2ghz, is_40mhz);
 SET_VAL(AR9170_PHY_RXGAIN_TXRX_ATTEN, val, m->txRxAttenCh[1]);
 carl9170_regwrite(AR9170_PHY_REG_RXGAIN_CHAIN_2, val);


 val = carl9170_def_val(AR9170_PHY_REG_GAIN_2GHZ, is_2ghz, is_40mhz);
 SET_VAL(AR9170_PHY_GAIN_2GHZ_RXTX_MARGIN, val, m->rxTxMarginCh[0]);

 if (!is_2ghz)
  SET_VAL(AR9170_PHY_GAIN_2GHZ_BSW_MARGIN, val, m->bswMargin[0]);
 carl9170_regwrite(AR9170_PHY_REG_GAIN_2GHZ, val);


 val = carl9170_def_val(AR9170_PHY_REG_GAIN_2GHZ_CHAIN_2,
          is_2ghz, is_40mhz);
 SET_VAL(AR9170_PHY_GAIN_2GHZ_RXTX_MARGIN, val, m->rxTxMarginCh[1]);
 carl9170_regwrite(AR9170_PHY_REG_GAIN_2GHZ_CHAIN_2, val);


 val = carl9170_def_val(AR9170_PHY_REG_TIMING_CTRL4(0),
          is_2ghz, is_40mhz);
 SET_VAL(AR9170_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, val, m->iqCalICh[0]);
 SET_VAL(AR9170_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, val, m->iqCalQCh[0]);
 carl9170_regwrite(AR9170_PHY_REG_TIMING_CTRL4(0), val);


 val = carl9170_def_val(AR9170_PHY_REG_TIMING_CTRL4(2),
          is_2ghz, is_40mhz);
 SET_VAL(AR9170_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, val, m->iqCalICh[1]);
 SET_VAL(AR9170_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, val, m->iqCalQCh[1]);
 carl9170_regwrite(AR9170_PHY_REG_TIMING_CTRL4(2), val);


 val = carl9170_def_val(AR9170_PHY_REG_TPCRG1, is_2ghz, is_40mhz);
 SET_VAL(AR9170_PHY_TPCRG1_PD_GAIN_1, val,
  xpd2pd[m->xpdGain & 0xf] & 3);
 SET_VAL(AR9170_PHY_TPCRG1_PD_GAIN_2, val,
  xpd2pd[m->xpdGain & 0xf] >> 2);
 carl9170_regwrite(AR9170_PHY_REG_TPCRG1, val);

 carl9170_regwrite(AR9170_PHY_REG_RX_CHAINMASK, ar->eeprom.rx_mask);
 carl9170_regwrite(AR9170_PHY_REG_CAL_CHAINMASK, ar->eeprom.rx_mask);

 carl9170_regwrite_finish();
 return carl9170_regwrite_result();
}
