
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar5416IniArray {unsigned int ia_rows; } ;
struct TYPE_2__ {scalar_t__ pcieSerDesWrite; scalar_t__ pcie_waen; } ;
struct ath_hw {struct ar5416IniArray iniPcieSerdesLowPower; struct ar5416IniArray iniPcieSerdes; TYPE_1__ config; scalar_t__ WARegVal; } ;


 int AR_PCIE_PM_CTRL ;
 int AR_PCIE_PM_CTRL_ENA ;
 scalar_t__ AR_WA ;
 scalar_t__ INI_RA (struct ar5416IniArray*,unsigned int,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void ar9003_hw_configpcipowersave(struct ath_hw *ah,
      bool power_off)
{

 if (!power_off ) {

  REG_SET_BIT(ah, AR_PCIE_PM_CTRL, AR_PCIE_PM_CTRL_ENA);


  if (ah->config.pcie_waen)
   REG_WRITE(ah, AR_WA, ah->config.pcie_waen);
  else
   REG_WRITE(ah, AR_WA, ah->WARegVal);
 }





 if (ah->config.pcieSerDesWrite) {
  unsigned int i;
  struct ar5416IniArray *array;

  array = power_off ? &ah->iniPcieSerdes :
        &ah->iniPcieSerdesLowPower;

  for (i = 0; i < array->ia_rows; i++) {
   REG_WRITE(ah,
      INI_RA(array, i, 0),
      INI_RA(array, i, 1));
  }
 }
}
