
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rackmeter {scalar_t__ i2s_regs; int * i2s; TYPE_2__* mdev; } ;
struct macio_chip {int dummy; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {struct macio_chip* chip; } ;


 int KEYLARGO_FCR1 ;
 int KL1_I2S0_CELL_ENABLE ;
 int KL1_I2S0_CLK_ENABLE_BIT ;
 int KL1_I2S0_ENABLE ;
 int MACIO_BIC (int ,int) ;
 int MACIO_BIS (int ,int) ;
 int MACIO_IN32 (int ) ;
 int PMAC_FTR_SOUND_CHIP_ENABLE ;
 int PMAC_FTR_WRITE_GPIO ;
 int RACKMETER_MAGIC_GPIO ;
 int in_le32 (scalar_t__) ;
 int out_le32 (scalar_t__,int) ;
 int pmac_call_feature (int ,int *,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void rackmeter_setup_i2s(struct rackmeter *rm)
{
 struct macio_chip *macio = rm->mdev->bus->chip;


 pmac_call_feature(PMAC_FTR_WRITE_GPIO, ((void*)0), RACKMETER_MAGIC_GPIO, 5);





 pmac_call_feature(PMAC_FTR_SOUND_CHIP_ENABLE, rm->i2s, 0, 1);





 MACIO_BIS(KEYLARGO_FCR1, KL1_I2S0_ENABLE);
 MACIO_BIC(KEYLARGO_FCR1, KL1_I2S0_CLK_ENABLE_BIT);
 (void)MACIO_IN32(KEYLARGO_FCR1);
 udelay(10);





 out_le32(rm->i2s_regs + 0x10, 0x01fa0000);
 (void)in_le32(rm->i2s_regs + 0x10);
 udelay(10);


 MACIO_BIS(KEYLARGO_FCR1, KL1_I2S0_CELL_ENABLE |
    KL1_I2S0_CLK_ENABLE_BIT);
 (void)MACIO_IN32(KEYLARGO_FCR1);
 udelay(10);
}
