
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct il_priv {int dummy; } ;
struct il_eeprom_channel {int flags; int max_power_avg; } ;
struct il_channel_info {int ht40_flags; int ht40_extension_channel; int ht40_max_power_avg; struct il_eeprom_channel ht40_eeprom; int channel; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int ACTIVE ;
 int CHECK_AND_PRINT (int ) ;
 int DFS ;
 int D_EEPROM (char*,int ,char*,int ,int ,int ,int ,int ,int,int ,char*) ;
 int EEPROM_CHANNEL_IBSS ;
 int EEPROM_CHANNEL_RADAR ;
 int EEPROM_CHANNEL_VALID ;
 int IBSS ;
 int RADAR ;
 int WIDE ;
 scalar_t__ il_get_channel_info (struct il_priv*,int,int ) ;
 scalar_t__ il_is_channel_a_band (struct il_channel_info*) ;
 int il_is_channel_valid (struct il_channel_info*) ;

__attribute__((used)) static int
il_mod_ht40_chan_info(struct il_priv *il, enum ieee80211_band band, u16 channel,
        const struct il_eeprom_channel *eeprom_ch,
        u8 clear_ht40_extension_channel)
{
 struct il_channel_info *ch_info;

 ch_info =
     (struct il_channel_info *)il_get_channel_info(il, band, channel);

 if (!il_is_channel_valid(ch_info))
  return -1;

 D_EEPROM("HT40 Ch. %d [%sGHz] %s%s%s%s%s(0x%02x %ddBm):"
   " Ad-Hoc %ssupported\n", ch_info->channel,
   il_is_channel_a_band(ch_info) ? "5.2" : "2.4",
   CHECK_AND_PRINT(IBSS), CHECK_AND_PRINT(ACTIVE),
   CHECK_AND_PRINT(RADAR), CHECK_AND_PRINT(WIDE),
   CHECK_AND_PRINT(DFS), eeprom_ch->flags,
   eeprom_ch->max_power_avg,
   ((eeprom_ch->flags & EEPROM_CHANNEL_IBSS) &&
    !(eeprom_ch->flags & EEPROM_CHANNEL_RADAR)) ? "" : "not ");

 ch_info->ht40_eeprom = *eeprom_ch;
 ch_info->ht40_max_power_avg = eeprom_ch->max_power_avg;
 ch_info->ht40_flags = eeprom_ch->flags;
 if (eeprom_ch->flags & EEPROM_CHANNEL_VALID)
  ch_info->ht40_extension_channel &=
      ~clear_ht40_extension_channel;

 return 0;
}
