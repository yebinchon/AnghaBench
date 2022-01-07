
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; int delay_usec; } ;
struct e1000_hw {scalar_t__ mac_type; TYPE_1__ eeprom; } ;


 int E1000_EECD_CS ;
 int E1000_EECD_DI ;
 int E1000_EECD_REQ ;
 int E1000_EECD_SK ;
 int E1000_WRITE_FLUSH () ;
 int EECD ;
 scalar_t__ e1000_82544 ;
 scalar_t__ e1000_eeprom_microwire ;
 scalar_t__ e1000_eeprom_spi ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static void e1000_release_eeprom(struct e1000_hw *hw)
{
 u32 eecd;

 e_dbg("e1000_release_eeprom");

 eecd = er32(EECD);

 if (hw->eeprom.type == e1000_eeprom_spi) {
  eecd |= E1000_EECD_CS;
  eecd &= ~E1000_EECD_SK;

  ew32(EECD, eecd);
  E1000_WRITE_FLUSH();

  udelay(hw->eeprom.delay_usec);
 } else if (hw->eeprom.type == e1000_eeprom_microwire) {



  eecd &= ~(E1000_EECD_CS | E1000_EECD_DI);

  ew32(EECD, eecd);


  eecd |= E1000_EECD_SK;
  ew32(EECD, eecd);
  E1000_WRITE_FLUSH();
  udelay(hw->eeprom.delay_usec);


  eecd &= ~E1000_EECD_SK;
  ew32(EECD, eecd);
  E1000_WRITE_FLUSH();
  udelay(hw->eeprom.delay_usec);
 }


 if (hw->mac_type > e1000_82544) {
  eecd &= ~E1000_EECD_REQ;
  ew32(EECD, eecd);
 }
}
