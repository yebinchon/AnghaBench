
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_PCIE_SERDES ;
 int AR_PCIE_SERDES2 ;
 int AR_SREV_5416 (struct ath_hw*) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;

__attribute__((used)) static void ath9k_hw_disablepcie(struct ath_hw *ah)
{
 if (!AR_SREV_5416(ah))
  return;

 REG_WRITE(ah, AR_PCIE_SERDES, 0x9248fc00);
 REG_WRITE(ah, AR_PCIE_SERDES, 0x24924924);
 REG_WRITE(ah, AR_PCIE_SERDES, 0x28000029);
 REG_WRITE(ah, AR_PCIE_SERDES, 0x57160824);
 REG_WRITE(ah, AR_PCIE_SERDES, 0x25980579);
 REG_WRITE(ah, AR_PCIE_SERDES, 0x00000000);
 REG_WRITE(ah, AR_PCIE_SERDES, 0x1aaabe40);
 REG_WRITE(ah, AR_PCIE_SERDES, 0xbe105554);
 REG_WRITE(ah, AR_PCIE_SERDES, 0x000e1007);

 REG_WRITE(ah, AR_PCIE_SERDES2, 0x00000000);
}
