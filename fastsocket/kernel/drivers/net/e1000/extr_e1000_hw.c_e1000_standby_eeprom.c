
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_eeprom_info {scalar_t__ type; int delay_usec; } ;
struct e1000_hw {struct e1000_eeprom_info eeprom; } ;


 int E1000_EECD_CS ;
 int E1000_EECD_SK ;
 int E1000_WRITE_FLUSH () ;
 int EECD ;
 scalar_t__ e1000_eeprom_microwire ;
 scalar_t__ e1000_eeprom_spi ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static void e1000_standby_eeprom(struct e1000_hw *hw)
{
 struct e1000_eeprom_info *eeprom = &hw->eeprom;
 u32 eecd;

 eecd = er32(EECD);

 if (eeprom->type == e1000_eeprom_microwire) {
  eecd &= ~(E1000_EECD_CS | E1000_EECD_SK);
  ew32(EECD, eecd);
  E1000_WRITE_FLUSH();
  udelay(eeprom->delay_usec);


  eecd |= E1000_EECD_SK;
  ew32(EECD, eecd);
  E1000_WRITE_FLUSH();
  udelay(eeprom->delay_usec);


  eecd |= E1000_EECD_CS;
  ew32(EECD, eecd);
  E1000_WRITE_FLUSH();
  udelay(eeprom->delay_usec);


  eecd &= ~E1000_EECD_SK;
  ew32(EECD, eecd);
  E1000_WRITE_FLUSH();
  udelay(eeprom->delay_usec);
 } else if (eeprom->type == e1000_eeprom_spi) {

  eecd |= E1000_EECD_CS;
  ew32(EECD, eecd);
  E1000_WRITE_FLUSH();
  udelay(eeprom->delay_usec);
  eecd &= ~E1000_EECD_CS;
  ew32(EECD, eecd);
  E1000_WRITE_FLUSH();
  udelay(eeprom->delay_usec);
 }
}
