
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw_priv {int * eeprom; } ;


 size_t EEPROM_MAC_ADDRESS ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void eeprom_parse_mac(struct ipw_priv *priv, u8 * mac)
{
 memcpy(mac, &priv->eeprom[EEPROM_MAC_ADDRESS], 6);
}
