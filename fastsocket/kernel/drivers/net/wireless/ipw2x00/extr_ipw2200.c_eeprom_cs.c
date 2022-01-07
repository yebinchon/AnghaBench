
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;


 int EEPROM_BIT_CS ;
 int EEPROM_BIT_SK ;
 int eeprom_write_reg (struct ipw_priv*,int) ;

__attribute__((used)) static void eeprom_cs(struct ipw_priv *priv)
{
 eeprom_write_reg(priv, 0);
 eeprom_write_reg(priv, EEPROM_BIT_CS);
 eeprom_write_reg(priv, EEPROM_BIT_CS | EEPROM_BIT_SK);
 eeprom_write_reg(priv, EEPROM_BIT_CS);
}
