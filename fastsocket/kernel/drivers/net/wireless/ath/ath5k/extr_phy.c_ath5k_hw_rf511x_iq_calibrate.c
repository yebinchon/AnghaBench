
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {scalar_t__ ah_version; int ah_iq_cal_needed; } ;
typedef int s32 ;


 scalar_t__ AR5K_AR5211 ;
 int AR5K_PHY_IQ ;
 int AR5K_PHY_IQRES_CAL_CORR ;
 int AR5K_PHY_IQRES_CAL_PWR_I ;
 int AR5K_PHY_IQRES_CAL_PWR_Q ;
 int AR5K_PHY_IQ_CAL_NUM_LOG_MAX ;
 int AR5K_PHY_IQ_CORR_ENABLE ;
 int AR5K_PHY_IQ_CORR_Q_I_COFF ;
 int AR5K_PHY_IQ_CORR_Q_Q_COFF ;
 int AR5K_PHY_IQ_RUN ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int) ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int) ;
 int ATH5K_DBG_UNLIMIT (struct ath5k_hw*,int ,char*,...) ;
 int ATH5K_DEBUG_CALIBRATE ;
 int EBUSY ;
 int ECANCELED ;
 int EINVAL ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int clamp (int,int,int) ;

__attribute__((used)) static int
ath5k_hw_rf511x_iq_calibrate(struct ath5k_hw *ah)
{
 u32 i_pwr, q_pwr;
 s32 iq_corr, i_coff, i_coffd, q_coff, q_coffd;
 int i;


 if (!ah->ah_iq_cal_needed)
  return -EINVAL;
 else if (ath5k_hw_reg_read(ah, AR5K_PHY_IQ) & AR5K_PHY_IQ_RUN) {
  ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_CALIBRATE,
    "I/Q calibration still running");
  return -EBUSY;
 }





 for (i = 0; i <= 10; i++) {
  iq_corr = ath5k_hw_reg_read(ah, AR5K_PHY_IQRES_CAL_CORR);
  i_pwr = ath5k_hw_reg_read(ah, AR5K_PHY_IQRES_CAL_PWR_I);
  q_pwr = ath5k_hw_reg_read(ah, AR5K_PHY_IQRES_CAL_PWR_Q);
  ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_CALIBRATE,
   "iq_corr:%x i_pwr:%x q_pwr:%x", iq_corr, i_pwr, q_pwr);
  if (i_pwr && q_pwr)
   break;
 }

 i_coffd = ((i_pwr >> 1) + (q_pwr >> 1)) >> 7;

 if (ah->ah_version == AR5K_AR5211)
  q_coffd = q_pwr >> 6;
 else
  q_coffd = q_pwr >> 7;




 if (i_coffd == 0 || q_coffd < 2)
  return -ECANCELED;



 i_coff = (-iq_corr) / i_coffd;
 i_coff = clamp(i_coff, -32, 31);

 if (ah->ah_version == AR5K_AR5211)
  q_coff = (i_pwr / q_coffd) - 64;
 else
  q_coff = (i_pwr / q_coffd) - 128;
 q_coff = clamp(q_coff, -16, 15);

 ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_CALIBRATE,
   "new I:%d Q:%d (i_coffd:%x q_coffd:%x)",
   i_coff, q_coff, i_coffd, q_coffd);


 AR5K_REG_WRITE_BITS(ah, AR5K_PHY_IQ, AR5K_PHY_IQ_CORR_Q_I_COFF, i_coff);
 AR5K_REG_WRITE_BITS(ah, AR5K_PHY_IQ, AR5K_PHY_IQ_CORR_Q_Q_COFF, q_coff);
 AR5K_REG_ENABLE_BITS(ah, AR5K_PHY_IQ, AR5K_PHY_IQ_CORR_ENABLE);



 AR5K_REG_WRITE_BITS(ah, AR5K_PHY_IQ,
   AR5K_PHY_IQ_CAL_NUM_LOG_MAX, 15);
 AR5K_REG_ENABLE_BITS(ah, AR5K_PHY_IQ, AR5K_PHY_IQ_RUN);

 return 0;
}
