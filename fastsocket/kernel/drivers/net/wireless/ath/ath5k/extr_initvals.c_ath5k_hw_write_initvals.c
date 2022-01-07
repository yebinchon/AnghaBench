
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath5k_hw {scalar_t__ ah_version; int ah_radio; } ;


 scalar_t__ AR5K_AR5210 ;
 scalar_t__ AR5K_AR5211 ;
 scalar_t__ AR5K_AR5212 ;
 int AR5K_PHY_AGC ;
 int AR5K_PHY_GAIN ;
 int AR5K_PHY_TPC_RG5 ;
 int AR5K_PHY_TPC_RG5_PD_GAIN_OVERLAP ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int) ;







 int ARRAY_SIZE (int ) ;
 int ATH5K_ERR (struct ath5k_hw*,char*,int) ;
 int EINVAL ;
 int ar5210_ini ;
 int ar5211_ini ;
 int ar5211_ini_mode ;
 int ar5212_ini_common_start ;
 int ar5212_ini_mode_start ;
 int ath5k_hw_ini_mode_registers (struct ath5k_hw*,int ,int ,int) ;
 int ath5k_hw_ini_registers (struct ath5k_hw*,int ,int ,int) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int) ;
 int rf2413_ini_common_end ;
 int rf2413_ini_mode_end ;
 int rf2425_ini_common_end ;
 int rf2425_ini_mode_end ;
 int rf5111_ini_bbgain ;
 int rf5111_ini_common_end ;
 int rf5111_ini_mode_end ;
 int rf5112_ini_bbgain ;
 int rf5112_ini_common_end ;
 int rf5112_ini_mode_end ;
 int rf5413_ini_common_end ;
 int rf5413_ini_mode_end ;

int
ath5k_hw_write_initvals(struct ath5k_hw *ah, u8 mode, bool skip_pcu)
{





 if (ah->ah_version == AR5K_AR5212) {


  ath5k_hw_ini_mode_registers(ah,
   ARRAY_SIZE(ar5212_ini_mode_start),
   ar5212_ini_mode_start, mode);




  ath5k_hw_ini_registers(ah, ARRAY_SIZE(ar5212_ini_common_start),
    ar5212_ini_common_start, skip_pcu);


  switch (ah->ah_radio) {
  case 130:

   ath5k_hw_ini_mode_registers(ah,
     ARRAY_SIZE(rf5111_ini_mode_end),
     rf5111_ini_mode_end, mode);

   ath5k_hw_ini_registers(ah,
     ARRAY_SIZE(rf5111_ini_common_end),
     rf5111_ini_common_end, skip_pcu);


   ath5k_hw_ini_registers(ah,
     ARRAY_SIZE(rf5111_ini_bbgain),
     rf5111_ini_bbgain, skip_pcu);

   break;
  case 129:

   ath5k_hw_ini_mode_registers(ah,
     ARRAY_SIZE(rf5112_ini_mode_end),
     rf5112_ini_mode_end, mode);

   ath5k_hw_ini_registers(ah,
     ARRAY_SIZE(rf5112_ini_common_end),
     rf5112_ini_common_end, skip_pcu);

   ath5k_hw_ini_registers(ah,
     ARRAY_SIZE(rf5112_ini_bbgain),
     rf5112_ini_bbgain, skip_pcu);

   break;
  case 128:

   ath5k_hw_ini_mode_registers(ah,
     ARRAY_SIZE(rf5413_ini_mode_end),
     rf5413_ini_mode_end, mode);

   ath5k_hw_ini_registers(ah,
     ARRAY_SIZE(rf5413_ini_common_end),
     rf5413_ini_common_end, skip_pcu);

   ath5k_hw_ini_registers(ah,
     ARRAY_SIZE(rf5112_ini_bbgain),
     rf5112_ini_bbgain, skip_pcu);

   break;
  case 134:
  case 132:

   ath5k_hw_ini_mode_registers(ah,
     ARRAY_SIZE(rf2413_ini_mode_end),
     rf2413_ini_mode_end, mode);

   ath5k_hw_ini_registers(ah,
     ARRAY_SIZE(rf2413_ini_common_end),
     rf2413_ini_common_end, skip_pcu);


   if (ah->ah_radio == 134) {
    ath5k_hw_reg_write(ah, 0x00004000,
       AR5K_PHY_AGC);
    ath5k_hw_reg_write(ah, 0x081b7caa,
       0xa274);
   }

   ath5k_hw_ini_registers(ah,
     ARRAY_SIZE(rf5112_ini_bbgain),
     rf5112_ini_bbgain, skip_pcu);
   break;
  case 133:

   ath5k_hw_ini_mode_registers(ah,
     ARRAY_SIZE(rf2413_ini_mode_end),
     rf2413_ini_mode_end, mode);

   ath5k_hw_ini_registers(ah,
     ARRAY_SIZE(rf2425_ini_common_end),
     rf2425_ini_common_end, skip_pcu);


   ath5k_hw_reg_write(ah, 0x00180a65, AR5K_PHY_GAIN);


   ath5k_hw_reg_write(ah, 0x00004000, AR5K_PHY_AGC);
   AR5K_REG_WRITE_BITS(ah, AR5K_PHY_TPC_RG5,
    AR5K_PHY_TPC_RG5_PD_GAIN_OVERLAP, 0xa);
   ath5k_hw_reg_write(ah, 0x800000a8, 0x8140);
   ath5k_hw_reg_write(ah, 0x000000ff, 0x9958);

   ath5k_hw_ini_registers(ah,
     ARRAY_SIZE(rf5112_ini_bbgain),
     rf5112_ini_bbgain, skip_pcu);
   break;
  case 131:

   ath5k_hw_ini_mode_registers(ah,
     ARRAY_SIZE(rf2425_ini_mode_end),
     rf2425_ini_mode_end, mode);

   ath5k_hw_ini_registers(ah,
     ARRAY_SIZE(rf2425_ini_common_end),
     rf2425_ini_common_end, skip_pcu);

   ath5k_hw_ini_registers(ah,
     ARRAY_SIZE(rf5112_ini_bbgain),
     rf5112_ini_bbgain, skip_pcu);
   break;
  default:
   return -EINVAL;

  }


 } else if (ah->ah_version == AR5K_AR5211) {


  if (mode > 2) {
   ATH5K_ERR(ah, "unsupported channel mode: %d\n", mode);
   return -EINVAL;
  }


  ath5k_hw_ini_mode_registers(ah, ARRAY_SIZE(ar5211_ini_mode),
    ar5211_ini_mode, mode);




  ath5k_hw_ini_registers(ah, ARRAY_SIZE(ar5211_ini),
    ar5211_ini, skip_pcu);




  ath5k_hw_ini_registers(ah, ARRAY_SIZE(rf5111_ini_bbgain),
    rf5111_ini_bbgain, skip_pcu);

 } else if (ah->ah_version == AR5K_AR5210) {
  ath5k_hw_ini_registers(ah, ARRAY_SIZE(ar5210_ini),
    ar5210_ini, skip_pcu);
 }

 return 0;
}
