
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_channel_info {int flags; } ;


 int EEPROM_CHANNEL_RADAR ;

__attribute__((used)) static inline int
il_is_channel_radar(const struct il_channel_info *ch_info)
{
 return (ch_info->flags & EEPROM_CHANNEL_RADAR) ? 1 : 0;
}
