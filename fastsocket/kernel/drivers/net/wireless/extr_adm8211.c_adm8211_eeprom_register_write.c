
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct eeprom_93cx6 {scalar_t__ reg_chip_select; scalar_t__ reg_data_clock; scalar_t__ reg_data_out; scalar_t__ reg_data_in; struct adm8211_priv* data; } ;
struct adm8211_priv {int dummy; } ;


 int ADM8211_CSR_READ (int ) ;
 int ADM8211_CSR_WRITE (int ,int) ;
 int ADM8211_SPR_SCLK ;
 int ADM8211_SPR_SCS ;
 int ADM8211_SPR_SDI ;
 int ADM8211_SPR_SDO ;
 int ADM8211_SPR_SRS ;
 int SPR ;

__attribute__((used)) static void adm8211_eeprom_register_write(struct eeprom_93cx6 *eeprom)
{
 struct adm8211_priv *priv = eeprom->data;
 u32 reg = 0x4000 | ADM8211_SPR_SRS;

 if (eeprom->reg_data_in)
  reg |= ADM8211_SPR_SDI;
 if (eeprom->reg_data_out)
  reg |= ADM8211_SPR_SDO;
 if (eeprom->reg_data_clock)
  reg |= ADM8211_SPR_SCLK;
 if (eeprom->reg_chip_select)
  reg |= ADM8211_SPR_SCS;

 ADM8211_CSR_WRITE(SPR, reg);
 ADM8211_CSR_READ(SPR);
}
