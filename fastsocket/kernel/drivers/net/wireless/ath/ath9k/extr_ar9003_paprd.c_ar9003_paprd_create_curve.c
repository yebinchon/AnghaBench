
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct ath_hw {int dummy; } ;
struct ath9k_hw_cal_data {scalar_t__** pa_table; int * small_signal_gain; } ;


 int AR_PHY_CHAN_INFO_MEMORY ;
 int AR_PHY_CHAN_INFO_MEMORY_CHANINFOMEM_S2_READ ;
 scalar_t__ AR_PHY_CHAN_INFO_TAB_0 ;
 int AR_PHY_PAPRD_TRAINER_STAT1 ;
 int AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE ;
 int EINPROGRESS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 scalar_t__ REG_READ (struct ath_hw*,scalar_t__) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 scalar_t__ ar9003_paprd_retrain_pa_in (struct ath_hw*,struct ath9k_hw_cal_data*,int) ;
 int create_pa_curve (scalar_t__*,scalar_t__*,scalar_t__*,int *) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (int,int ) ;
 int memset (scalar_t__*,int ,int) ;

int ar9003_paprd_create_curve(struct ath_hw *ah,
         struct ath9k_hw_cal_data *caldata, int chain)
{
 u16 *small_signal_gain = &caldata->small_signal_gain[chain];
 u32 *pa_table = caldata->pa_table[chain];
 u32 *data_L, *data_U;
 int i, status = 0;
 u32 *buf;
 u32 reg;

 memset(caldata->pa_table[chain], 0, sizeof(caldata->pa_table[chain]));

 buf = kmalloc(2 * 48 * sizeof(u32), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 data_L = &buf[0];
 data_U = &buf[48];

 REG_CLR_BIT(ah, AR_PHY_CHAN_INFO_MEMORY,
      AR_PHY_CHAN_INFO_MEMORY_CHANINFOMEM_S2_READ);

 reg = AR_PHY_CHAN_INFO_TAB_0;
 for (i = 0; i < 48; i++)
  data_L[i] = REG_READ(ah, reg + (i << 2));

 REG_SET_BIT(ah, AR_PHY_CHAN_INFO_MEMORY,
      AR_PHY_CHAN_INFO_MEMORY_CHANINFOMEM_S2_READ);

 for (i = 0; i < 48; i++)
  data_U[i] = REG_READ(ah, reg + (i << 2));

 if (!create_pa_curve(data_L, data_U, pa_table, small_signal_gain))
  status = -2;

 if (ar9003_paprd_retrain_pa_in(ah, caldata, chain))
  status = -EINPROGRESS;

 REG_CLR_BIT(ah, AR_PHY_PAPRD_TRAINER_STAT1,
      AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE);

 kfree(buf);

 return status;
}
