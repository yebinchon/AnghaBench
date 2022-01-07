
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zd_chip {int mutex; } ;


 int CR_MANDATORY_RATE_TBL ;
 int CR_RATE_11M ;
 int CR_RATE_12M ;
 int CR_RATE_1M ;
 int CR_RATE_24M ;
 int CR_RATE_2M ;
 int CR_RATE_5_5M ;
 int CR_RATE_6M ;
 int ZD_ASSERT (int ) ;
 int mutex_is_locked (int *) ;
 int zd_iowrite32_locked (struct zd_chip*,int,int ) ;

__attribute__((used)) static int set_mandatory_rates(struct zd_chip *chip, int gmode)
{
 u32 rates;
 ZD_ASSERT(mutex_is_locked(&chip->mutex));




 if (!gmode)
  rates = CR_RATE_1M|CR_RATE_2M|CR_RATE_5_5M|CR_RATE_11M;
 else
  rates = CR_RATE_1M|CR_RATE_2M|CR_RATE_5_5M|CR_RATE_11M|
   CR_RATE_6M|CR_RATE_12M|CR_RATE_24M;

 return zd_iowrite32_locked(chip, rates, CR_MANDATORY_RATE_TBL);
}
