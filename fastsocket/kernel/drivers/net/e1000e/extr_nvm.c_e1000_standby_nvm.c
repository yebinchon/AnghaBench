
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_nvm_info {scalar_t__ type; int delay_usec; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;


 int E1000_EECD_CS ;
 int EECD ;
 scalar_t__ e1000_nvm_eeprom_spi ;
 int e1e_flush () ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;
 int udelay (int ) ;

__attribute__((used)) static void e1000_standby_nvm(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 eecd = er32(EECD);

 if (nvm->type == e1000_nvm_eeprom_spi) {

  eecd |= E1000_EECD_CS;
  ew32(EECD, eecd);
  e1e_flush();
  udelay(nvm->delay_usec);
  eecd &= ~E1000_EECD_CS;
  ew32(EECD, eecd);
  e1e_flush();
  udelay(nvm->delay_usec);
 }
}
