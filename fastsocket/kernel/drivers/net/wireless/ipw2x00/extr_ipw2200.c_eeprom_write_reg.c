
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int eeprom_delay; } ;


 int FW_MEM_REG_EEPROM_ACCESS ;
 int ipw_write_reg32 (struct ipw_priv*,int ,int ) ;
 int udelay (int ) ;

__attribute__((used)) static inline void eeprom_write_reg(struct ipw_priv *p, u32 data)
{
 ipw_write_reg32(p, FW_MEM_REG_EEPROM_ACCESS, data);


 udelay(p->eeprom_delay);
}
