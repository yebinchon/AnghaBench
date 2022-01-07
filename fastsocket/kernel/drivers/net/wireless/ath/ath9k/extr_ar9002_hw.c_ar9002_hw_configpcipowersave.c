
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_3__ {int pcie_waen; } ;
struct TYPE_4__ {scalar_t__ ia_rows; } ;
struct ath_hw {TYPE_1__ config; TYPE_2__ iniPcieSerdes; } ;


 int AR9280_WA_DEFAULT ;
 int AR9285_WA_DEFAULT ;
 int AR_PCIE_PM_CTRL ;
 int AR_PCIE_PM_CTRL_ENA ;
 int AR_PCIE_SERDES ;
 int AR_PCIE_SERDES2 ;
 scalar_t__ AR_SREV_9271 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9280 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9280_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9285 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9285E_20 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9287 (struct ath_hw*) ;
 int AR_WA ;
 int AR_WA_BIT22 ;
 int AR_WA_BIT23 ;
 int AR_WA_BIT6 ;
 int AR_WA_BIT7 ;
 int AR_WA_D3_L1_DISABLE ;
 int AR_WA_DEFAULT ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int INI_RA (TYPE_2__*,scalar_t__,int) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_READ (struct ath_hw*,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void ar9002_hw_configpcipowersave(struct ath_hw *ah,
      bool power_off)
{
 u8 i;
 u32 val;


 if (!power_off ) {
  if (AR_SREV_9280_20_OR_LATER(ah)) {





   for (i = 0; i < ah->iniPcieSerdes.ia_rows; i++) {
    REG_WRITE(ah, INI_RA(&ah->iniPcieSerdes, i, 0),
       INI_RA(&ah->iniPcieSerdes, i, 1));
   }
  } else {
   ENABLE_REGWRITE_BUFFER(ah);

   REG_WRITE(ah, AR_PCIE_SERDES, 0x9248fc00);
   REG_WRITE(ah, AR_PCIE_SERDES, 0x24924924);


   REG_WRITE(ah, AR_PCIE_SERDES, 0x28000039);
   REG_WRITE(ah, AR_PCIE_SERDES, 0x53160824);
   REG_WRITE(ah, AR_PCIE_SERDES, 0xe5980579);





   REG_WRITE(ah, AR_PCIE_SERDES, 0x001defff);

   REG_WRITE(ah, AR_PCIE_SERDES, 0x1aaabe40);
   REG_WRITE(ah, AR_PCIE_SERDES, 0xbe105554);
   REG_WRITE(ah, AR_PCIE_SERDES, 0x000e3007);


   REG_WRITE(ah, AR_PCIE_SERDES2, 0x00000000);

   REGWRITE_BUFFER_FLUSH(ah);
  }

  udelay(1000);
 }

 if (power_off) {

  REG_CLR_BIT(ah, AR_PCIE_PM_CTRL, AR_PCIE_PM_CTRL_ENA);

  val = REG_READ(ah, AR_WA);







  if (ah->config.pcie_waen) {
   if (ah->config.pcie_waen & AR_WA_D3_L1_DISABLE)
    val |= AR_WA_D3_L1_DISABLE;
  } else {
   if (((AR_SREV_9285(ah) ||
         AR_SREV_9271(ah) ||
         AR_SREV_9287(ah)) &&
        (AR9285_WA_DEFAULT & AR_WA_D3_L1_DISABLE)) ||
       (AR_SREV_9280(ah) &&
        (AR9280_WA_DEFAULT & AR_WA_D3_L1_DISABLE))) {
    val |= AR_WA_D3_L1_DISABLE;
   }
  }

  if (AR_SREV_9280(ah) || AR_SREV_9285(ah) || AR_SREV_9287(ah)) {




   val &= ~(AR_WA_BIT6 | AR_WA_BIT7);
  }

  if (AR_SREV_9280(ah))
   val |= AR_WA_BIT22;

  if (AR_SREV_9285E_20(ah))
   val |= AR_WA_BIT23;

  REG_WRITE(ah, AR_WA, val);
 } else {
  if (ah->config.pcie_waen) {
   val = ah->config.pcie_waen;
   if (!power_off)
    val &= (~AR_WA_D3_L1_DISABLE);
  } else {
   if (AR_SREV_9285(ah) ||
       AR_SREV_9271(ah) ||
       AR_SREV_9287(ah)) {
    val = AR9285_WA_DEFAULT;
    if (!power_off)
     val &= (~AR_WA_D3_L1_DISABLE);
   }
   else if (AR_SREV_9280(ah)) {




    val = AR9280_WA_DEFAULT;
    if (!power_off)
     val &= (~AR_WA_D3_L1_DISABLE);
   } else {
    val = AR_WA_DEFAULT;
   }
  }


  if (AR_SREV_9285(ah) || AR_SREV_9287(ah))
   val |= (AR_WA_BIT6 | AR_WA_BIT7);

  if (AR_SREV_9285E_20(ah))
   val |= AR_WA_BIT23;

  REG_WRITE(ah, AR_WA, val);


  REG_SET_BIT(ah, AR_PCIE_PM_CTRL, AR_PCIE_PM_CTRL_ENA);
 }
}
