
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw_priv {int dummy; } ;


 int eeprom_cs (struct ipw_priv*) ;
 int eeprom_write_bit (struct ipw_priv*,int) ;

__attribute__((used)) static void eeprom_op(struct ipw_priv *priv, u8 op, u8 addr)
{
 int i;

 eeprom_cs(priv);
 eeprom_write_bit(priv, 1);
 eeprom_write_bit(priv, op & 2);
 eeprom_write_bit(priv, op & 1);
 for (i = 7; i >= 0; i--) {
  eeprom_write_bit(priv, addr & (1 << i));
 }
}
