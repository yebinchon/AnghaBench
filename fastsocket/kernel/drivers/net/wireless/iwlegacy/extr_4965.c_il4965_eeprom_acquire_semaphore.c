
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct il_priv {int dummy; } ;


 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM ;
 scalar_t__ EEPROM_SEM_RETRY_LIMIT ;
 int EEPROM_SEM_TIMEOUT ;
 int _il_poll_bit (struct il_priv*,int ,int ,int ,int ) ;
 int il_set_bit (struct il_priv*,int ,int ) ;

int
il4965_eeprom_acquire_semaphore(struct il_priv *il)
{
 u16 count;
 int ret;

 for (count = 0; count < EEPROM_SEM_RETRY_LIMIT; count++) {

  il_set_bit(il, CSR_HW_IF_CONFIG_REG,
      CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM);


  ret =
      _il_poll_bit(il, CSR_HW_IF_CONFIG_REG,
     CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM,
     CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM,
     EEPROM_SEM_TIMEOUT);
  if (ret >= 0)
   return ret;
 }

 return ret;
}
