
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct il_priv {int const* eeprom; TYPE_1__* cfg; } ;
struct TYPE_2__ {size_t eeprom_size; } ;


 int BUG_ON (int) ;

const u8 *
il_eeprom_query_addr(const struct il_priv *il, size_t offset)
{
 BUG_ON(offset >= il->cfg->eeprom_size);
 return &il->eeprom[offset];
}
