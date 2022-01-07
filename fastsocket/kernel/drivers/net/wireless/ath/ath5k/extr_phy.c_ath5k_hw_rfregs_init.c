
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct ieee80211_channel {scalar_t__ band; scalar_t__ hw_value; int center_freq; } ;
struct ath5k_rf_reg {int dummy; } ;
struct ath5k_ini_rfbuffer {int rfb_bank; int rfb_ctrl_register; int * rfb_mode_data; } ;
struct TYPE_4__ {size_t g_step_idx; void* g_state; } ;
struct ath5k_eeprom_info {int** ee_ob; int** ee_db; int* ee_xpd; int* ee_x_gain; int* ee_i_gain; size_t** ee_pdc_to_idx; int* ee_pd_gains; } ;
struct TYPE_3__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {int ah_radio; int ah_rf_banks_size; int ah_radio_5ghz_revision; scalar_t__ ah_mac_srev; int* ah_offset; scalar_t__ ah_bwmode; scalar_t__ ah_phy_revision; TYPE_2__ ah_gain; int * ah_rf_banks; void* ah_rf_regs_count; TYPE_1__ ah_capabilities; } ;
struct ath5k_gain_opt_step {int* gos_param; } ;
struct ath5k_gain_opt {struct ath5k_gain_opt_step* go_step; } ;


 scalar_t__ AR5K_BWMODE_10MHZ ;
 scalar_t__ AR5K_BWMODE_40MHZ ;
 scalar_t__ AR5K_BWMODE_5MHZ ;
 size_t AR5K_EEPROM_MODE_11A ;
 size_t AR5K_EEPROM_MODE_11B ;
 size_t AR5K_EEPROM_MODE_11G ;
 int AR5K_MAX_RF_BANKS ;
 scalar_t__ AR5K_MODE_11B ;
 int AR5K_PHY_FRAME_CTL ;
 int AR5K_PHY_FRAME_CTL_TX_CLIP ;
 int AR5K_REG_WAIT (int) ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int) ;







 void* AR5K_RFGAIN_ACTIVE ;
 int AR5K_RF_DB_2GHZ ;
 int AR5K_RF_DB_5GHZ ;
 int AR5K_RF_DERBY_CHAN_SEL_MODE ;
 int AR5K_RF_GAIN_I ;
 int AR5K_RF_HIGH_VC_CP ;
 int AR5K_RF_LOW_VC_CP ;
 int AR5K_RF_MAX_TIME ;
 int AR5K_RF_MID_VC_CP ;
 int AR5K_RF_MIXGAIN_OVR ;
 int AR5K_RF_OB_2GHZ ;
 int AR5K_RF_OB_5GHZ ;
 int AR5K_RF_PAD2GND ;
 int AR5K_RF_PD_DELAY_A ;
 int AR5K_RF_PD_GAIN_HI ;
 int AR5K_RF_PD_GAIN_LO ;
 int AR5K_RF_PD_PERIOD_A ;
 int AR5K_RF_PLO_SEL ;
 int AR5K_RF_PUSH_UP ;
 int AR5K_RF_PWD_130 ;
 int AR5K_RF_PWD_131 ;
 int AR5K_RF_PWD_132 ;
 int AR5K_RF_PWD_136 ;
 int AR5K_RF_PWD_137 ;
 int AR5K_RF_PWD_138 ;
 int AR5K_RF_PWD_166 ;
 int AR5K_RF_PWD_167 ;
 int AR5K_RF_PWD_84 ;
 int AR5K_RF_PWD_90 ;
 int AR5K_RF_PWD_ICLOBUF_2G ;
 int AR5K_RF_PWD_XPD ;
 int AR5K_RF_RFGAIN_SEL ;
 int AR5K_RF_TURBO ;
 int AR5K_RF_WAIT_I ;
 int AR5K_RF_WAIT_S ;
 int AR5K_RF_XB2_LVL ;
 int AR5K_RF_XB5_LVL ;
 int AR5K_RF_XPD_GAIN ;
 int AR5K_RF_XPD_SEL ;
 scalar_t__ AR5K_SREV_AR2417 ;
 scalar_t__ AR5K_SREV_AR5413 ;
 scalar_t__ AR5K_SREV_AR5424 ;
 scalar_t__ AR5K_SREV_PHY_5212A ;
 int AR5K_SREV_RAD_5112A ;
 int AR5K_SREV_REV ;
 void* ARRAY_SIZE (void*) ;
 int ATH5K_ERR (struct ath5k_hw*,char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IEEE80211_BAND_2GHZ ;
 scalar_t__ IEEE80211_BAND_5GHZ ;
 int ath5k_hw_bitswap (int,int) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int ,int ) ;
 int ath5k_hw_rfb_op (struct ath5k_hw*,struct ath5k_rf_reg const*,int,int ,int) ;
 int * kmalloc (int,int ) ;
 void* rf_regs_2316 ;
 void* rf_regs_2413 ;
 void* rf_regs_2425 ;
 void* rf_regs_5111 ;
 void* rf_regs_5112 ;
 void* rf_regs_5112a ;
 void* rf_regs_5413 ;
 void* rfb_2316 ;
 void* rfb_2317 ;
 void* rfb_2413 ;
 void* rfb_2417 ;
 void* rfb_2425 ;
 void* rfb_5111 ;
 void* rfb_5112 ;
 void* rfb_5112a ;
 void* rfb_5413 ;
 struct ath5k_gain_opt rfgain_opt_5111 ;
 struct ath5k_gain_opt rfgain_opt_5112 ;

__attribute__((used)) static int
ath5k_hw_rfregs_init(struct ath5k_hw *ah,
   struct ieee80211_channel *channel,
   unsigned int mode)
{
 const struct ath5k_rf_reg *rf_regs;
 const struct ath5k_ini_rfbuffer *ini_rfb;
 const struct ath5k_gain_opt *go = ((void*)0);
 const struct ath5k_gain_opt_step *g_step;
 struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
 u8 ee_mode = 0;
 u32 *rfb;
 int i, obdb = -1, bank = -1;

 switch (ah->ah_radio) {
 case 130:
  rf_regs = rf_regs_5111;
  ah->ah_rf_regs_count = ARRAY_SIZE(rf_regs_5111);
  ini_rfb = rfb_5111;
  ah->ah_rf_banks_size = ARRAY_SIZE(rfb_5111);
  go = &rfgain_opt_5111;
  break;
 case 129:
  if (ah->ah_radio_5ghz_revision >= AR5K_SREV_RAD_5112A) {
   rf_regs = rf_regs_5112a;
   ah->ah_rf_regs_count = ARRAY_SIZE(rf_regs_5112a);
   ini_rfb = rfb_5112a;
   ah->ah_rf_banks_size = ARRAY_SIZE(rfb_5112a);
  } else {
   rf_regs = rf_regs_5112;
   ah->ah_rf_regs_count = ARRAY_SIZE(rf_regs_5112);
   ini_rfb = rfb_5112;
   ah->ah_rf_banks_size = ARRAY_SIZE(rfb_5112);
  }
  go = &rfgain_opt_5112;
  break;
 case 132:
  rf_regs = rf_regs_2413;
  ah->ah_rf_regs_count = ARRAY_SIZE(rf_regs_2413);
  ini_rfb = rfb_2413;
  ah->ah_rf_banks_size = ARRAY_SIZE(rfb_2413);
  break;
 case 134:
  rf_regs = rf_regs_2316;
  ah->ah_rf_regs_count = ARRAY_SIZE(rf_regs_2316);
  ini_rfb = rfb_2316;
  ah->ah_rf_banks_size = ARRAY_SIZE(rfb_2316);
  break;
 case 128:
  rf_regs = rf_regs_5413;
  ah->ah_rf_regs_count = ARRAY_SIZE(rf_regs_5413);
  ini_rfb = rfb_5413;
  ah->ah_rf_banks_size = ARRAY_SIZE(rfb_5413);
  break;
 case 133:
  rf_regs = rf_regs_2425;
  ah->ah_rf_regs_count = ARRAY_SIZE(rf_regs_2425);
  ini_rfb = rfb_2317;
  ah->ah_rf_banks_size = ARRAY_SIZE(rfb_2317);
  break;
 case 131:
  rf_regs = rf_regs_2425;
  ah->ah_rf_regs_count = ARRAY_SIZE(rf_regs_2425);
  if (ah->ah_mac_srev < AR5K_SREV_AR2417) {
   ini_rfb = rfb_2425;
   ah->ah_rf_banks_size = ARRAY_SIZE(rfb_2425);
  } else {
   ini_rfb = rfb_2417;
   ah->ah_rf_banks_size = ARRAY_SIZE(rfb_2417);
  }
  break;
 default:
  return -EINVAL;
 }




 if (ah->ah_rf_banks == ((void*)0)) {
  ah->ah_rf_banks = kmalloc(sizeof(u32) * ah->ah_rf_banks_size,
        GFP_KERNEL);
  if (ah->ah_rf_banks == ((void*)0)) {
   ATH5K_ERR(ah, "out of memory\n");
   return -ENOMEM;
  }
 }


 rfb = ah->ah_rf_banks;

 for (i = 0; i < ah->ah_rf_banks_size; i++) {
  if (ini_rfb[i].rfb_bank >= AR5K_MAX_RF_BANKS) {
   ATH5K_ERR(ah, "invalid bank\n");
   return -EINVAL;
  }


  if (bank != ini_rfb[i].rfb_bank) {
   bank = ini_rfb[i].rfb_bank;
   ah->ah_offset[bank] = i;
  }

  rfb[i] = ini_rfb[i].rfb_mode_data[mode];
 }


 if (channel->band == IEEE80211_BAND_2GHZ) {

  if (channel->hw_value == AR5K_MODE_11B)
   ee_mode = AR5K_EEPROM_MODE_11B;
  else
   ee_mode = AR5K_EEPROM_MODE_11G;
  if ((ah->ah_radio == 130) ||
  (ah->ah_radio == 129))
   obdb = 0;
  else
   obdb = 1;

  ath5k_hw_rfb_op(ah, rf_regs, ee->ee_ob[ee_mode][obdb],
      AR5K_RF_OB_2GHZ, 1);

  ath5k_hw_rfb_op(ah, rf_regs, ee->ee_db[ee_mode][obdb],
      AR5K_RF_DB_2GHZ, 1);


 } else if ((channel->band == IEEE80211_BAND_5GHZ) ||
   (ah->ah_radio == 130)) {



  ee_mode = AR5K_EEPROM_MODE_11A;
  obdb = channel->center_freq >= 5725 ? 3 :
   (channel->center_freq >= 5500 ? 2 :
   (channel->center_freq >= 5260 ? 1 :
    (channel->center_freq > 4000 ? 0 : -1)));

  if (obdb < 0)
   return -EINVAL;

  ath5k_hw_rfb_op(ah, rf_regs, ee->ee_ob[ee_mode][obdb],
      AR5K_RF_OB_5GHZ, 1);

  ath5k_hw_rfb_op(ah, rf_regs, ee->ee_db[ee_mode][obdb],
      AR5K_RF_DB_5GHZ, 1);
 }

 g_step = &go->go_step[ah->ah_gain.g_step_idx];


 if ((ah->ah_bwmode == AR5K_BWMODE_40MHZ) &&
 (ah->ah_radio != 128))
  ath5k_hw_rfb_op(ah, rf_regs, 1, AR5K_RF_TURBO, 0);


 if (ah->ah_radio == 130) {


  if (channel->hw_value != AR5K_MODE_11B) {

   AR5K_REG_WRITE_BITS(ah, AR5K_PHY_FRAME_CTL,
     AR5K_PHY_FRAME_CTL_TX_CLIP,
     g_step->gos_param[0]);

   ath5k_hw_rfb_op(ah, rf_regs, g_step->gos_param[1],
       AR5K_RF_PWD_90, 1);

   ath5k_hw_rfb_op(ah, rf_regs, g_step->gos_param[2],
       AR5K_RF_PWD_84, 1);

   ath5k_hw_rfb_op(ah, rf_regs, g_step->gos_param[3],
      AR5K_RF_RFGAIN_SEL, 1);



   ah->ah_gain.g_state = AR5K_RFGAIN_ACTIVE;

  }



  ath5k_hw_rfb_op(ah, rf_regs, !ee->ee_xpd[ee_mode],
      AR5K_RF_PWD_XPD, 1);

  ath5k_hw_rfb_op(ah, rf_regs, ee->ee_x_gain[ee_mode],
      AR5K_RF_XPD_GAIN, 1);

  ath5k_hw_rfb_op(ah, rf_regs, ee->ee_i_gain[ee_mode],
      AR5K_RF_GAIN_I, 1);

  ath5k_hw_rfb_op(ah, rf_regs, ee->ee_xpd[ee_mode],
      AR5K_RF_PLO_SEL, 1);


  if (ah->ah_bwmode == AR5K_BWMODE_5MHZ ||
  ah->ah_bwmode == AR5K_BWMODE_10MHZ) {
   u8 wait_i;

   ath5k_hw_rfb_op(ah, rf_regs, 0x1f,
      AR5K_RF_WAIT_S, 1);

   wait_i = (ah->ah_bwmode == AR5K_BWMODE_5MHZ) ?
       0x1f : 0x10;

   ath5k_hw_rfb_op(ah, rf_regs, wait_i,
      AR5K_RF_WAIT_I, 1);
   ath5k_hw_rfb_op(ah, rf_regs, 3,
      AR5K_RF_MAX_TIME, 1);

  }
 }

 if (ah->ah_radio == 129) {


  if (channel->hw_value != AR5K_MODE_11B) {

   ath5k_hw_rfb_op(ah, rf_regs, g_step->gos_param[0],
      AR5K_RF_MIXGAIN_OVR, 1);

   ath5k_hw_rfb_op(ah, rf_regs, g_step->gos_param[1],
      AR5K_RF_PWD_138, 1);

   ath5k_hw_rfb_op(ah, rf_regs, g_step->gos_param[2],
      AR5K_RF_PWD_137, 1);

   ath5k_hw_rfb_op(ah, rf_regs, g_step->gos_param[3],
      AR5K_RF_PWD_136, 1);

   ath5k_hw_rfb_op(ah, rf_regs, g_step->gos_param[4],
      AR5K_RF_PWD_132, 1);

   ath5k_hw_rfb_op(ah, rf_regs, g_step->gos_param[5],
      AR5K_RF_PWD_131, 1);

   ath5k_hw_rfb_op(ah, rf_regs, g_step->gos_param[6],
      AR5K_RF_PWD_130, 1);



   ah->ah_gain.g_state = AR5K_RFGAIN_ACTIVE;
  }



  ath5k_hw_rfb_op(ah, rf_regs, ee->ee_xpd[ee_mode],
      AR5K_RF_XPD_SEL, 1);

  if (ah->ah_radio_5ghz_revision < AR5K_SREV_RAD_5112A) {

   ath5k_hw_rfb_op(ah, rf_regs,
      ee->ee_x_gain[ee_mode],
      AR5K_RF_XPD_GAIN, 1);

  } else {
   u8 *pdg_curve_to_idx = ee->ee_pdc_to_idx[ee_mode];
   if (ee->ee_pd_gains[ee_mode] > 1) {
    ath5k_hw_rfb_op(ah, rf_regs,
      pdg_curve_to_idx[0],
      AR5K_RF_PD_GAIN_LO, 1);
    ath5k_hw_rfb_op(ah, rf_regs,
      pdg_curve_to_idx[1],
      AR5K_RF_PD_GAIN_HI, 1);
   } else {
    ath5k_hw_rfb_op(ah, rf_regs,
      pdg_curve_to_idx[0],
      AR5K_RF_PD_GAIN_LO, 1);
    ath5k_hw_rfb_op(ah, rf_regs,
      pdg_curve_to_idx[0],
      AR5K_RF_PD_GAIN_HI, 1);
   }


   if (ah->ah_radio == 129 &&
       (ah->ah_radio_5ghz_revision & AR5K_SREV_REV) > 0) {
    ath5k_hw_rfb_op(ah, rf_regs, 2,
      AR5K_RF_HIGH_VC_CP, 1);

    ath5k_hw_rfb_op(ah, rf_regs, 2,
      AR5K_RF_MID_VC_CP, 1);

    ath5k_hw_rfb_op(ah, rf_regs, 2,
      AR5K_RF_LOW_VC_CP, 1);

    ath5k_hw_rfb_op(ah, rf_regs, 2,
      AR5K_RF_PUSH_UP, 1);
   }


   if (ah->ah_phy_revision >= AR5K_SREV_PHY_5212A) {
    ath5k_hw_rfb_op(ah, rf_regs, 1,
      AR5K_RF_PAD2GND, 1);

    ath5k_hw_rfb_op(ah, rf_regs, 1,
      AR5K_RF_XB2_LVL, 1);

    ath5k_hw_rfb_op(ah, rf_regs, 1,
      AR5K_RF_XB5_LVL, 1);

    ath5k_hw_rfb_op(ah, rf_regs, 1,
      AR5K_RF_PWD_167, 1);

    ath5k_hw_rfb_op(ah, rf_regs, 1,
      AR5K_RF_PWD_166, 1);
   }
  }

  ath5k_hw_rfb_op(ah, rf_regs, ee->ee_i_gain[ee_mode],
      AR5K_RF_GAIN_I, 1);


  if (ah->ah_bwmode == AR5K_BWMODE_5MHZ ||
  ah->ah_bwmode == AR5K_BWMODE_10MHZ) {
   u8 pd_delay;

   pd_delay = (ah->ah_bwmode == AR5K_BWMODE_5MHZ) ?
       0xf : 0x8;

   ath5k_hw_rfb_op(ah, rf_regs, pd_delay,
      AR5K_RF_PD_PERIOD_A, 1);
   ath5k_hw_rfb_op(ah, rf_regs, 0xf,
      AR5K_RF_PD_DELAY_A, 1);

  }
 }

 if (ah->ah_radio == 128 &&
 channel->band == IEEE80211_BAND_2GHZ) {

  ath5k_hw_rfb_op(ah, rf_regs, 1, AR5K_RF_DERBY_CHAN_SEL_MODE,
         1);


  if (ah->ah_mac_srev >= AR5K_SREV_AR5424 &&
  ah->ah_mac_srev < AR5K_SREV_AR5413)
   ath5k_hw_rfb_op(ah, rf_regs, ath5k_hw_bitswap(6, 3),
      AR5K_RF_PWD_ICLOBUF_2G, 1);

 }


 for (i = 0; i < ah->ah_rf_banks_size; i++) {
  AR5K_REG_WAIT(i);
  ath5k_hw_reg_write(ah, rfb[i], ini_rfb[i].rfb_ctrl_register);
 }

 return 0;
}
