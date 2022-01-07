
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_channel_info {int flags; } ;


 int EEPROM_CHANNEL_IBSS ;

__attribute__((used)) static inline int
il_is_channel_ibss(const struct il_channel_info *ch)
{
 return (ch->flags & EEPROM_CHANNEL_IBSS) ? 1 : 0;
}
