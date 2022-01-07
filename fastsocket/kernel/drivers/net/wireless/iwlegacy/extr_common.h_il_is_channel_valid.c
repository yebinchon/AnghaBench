
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_channel_info {int flags; } ;


 int EEPROM_CHANNEL_VALID ;

__attribute__((used)) static inline int
il_is_channel_valid(const struct il_channel_info *ch_info)
{
 if (ch_info == ((void*)0))
  return 0;
 return (ch_info->flags & EEPROM_CHANNEL_VALID) ? 1 : 0;
}
