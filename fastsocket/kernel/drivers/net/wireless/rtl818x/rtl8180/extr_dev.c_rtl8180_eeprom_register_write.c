
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl8180_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct eeprom_93cx6 {scalar_t__ reg_chip_select; scalar_t__ reg_data_clock; scalar_t__ reg_data_out; scalar_t__ reg_data_in; struct ieee80211_hw* data; } ;
struct TYPE_2__ {int EEPROM_CMD; } ;


 int RTL818X_EEPROM_CMD_CK ;
 int RTL818X_EEPROM_CMD_CS ;
 int RTL818X_EEPROM_CMD_READ ;
 int RTL818X_EEPROM_CMD_WRITE ;
 int rtl818x_ioread8 (struct rtl8180_priv*,int *) ;
 int rtl818x_iowrite8 (struct rtl8180_priv*,int *,int) ;
 int udelay (int) ;

__attribute__((used)) static void rtl8180_eeprom_register_write(struct eeprom_93cx6 *eeprom)
{
 struct ieee80211_hw *dev = eeprom->data;
 struct rtl8180_priv *priv = dev->priv;
 u8 reg = 2 << 6;

 if (eeprom->reg_data_in)
  reg |= RTL818X_EEPROM_CMD_WRITE;
 if (eeprom->reg_data_out)
  reg |= RTL818X_EEPROM_CMD_READ;
 if (eeprom->reg_data_clock)
  reg |= RTL818X_EEPROM_CMD_CK;
 if (eeprom->reg_chip_select)
  reg |= RTL818X_EEPROM_CMD_CS;

 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, reg);
 rtl818x_ioread8(priv, &priv->map->EEPROM_CMD);
 udelay(10);
}
