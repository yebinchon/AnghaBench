
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw_station_entry {int mac_addr; scalar_t__ support_mode; scalar_t__ reserved; } ;
struct ipw_priv {int num_stations; int config; int * stations; scalar_t__ missed_adhoc_beacons; } ;
typedef int entry ;


 int CFG_ADHOC_PERSIST ;
 int CFG_STATIC_CHANNEL ;
 int ETH_ALEN ;
 int IPW_DEBUG_SCAN (char*,int*) ;
 int IPW_INVALID_STATION ;
 scalar_t__ IPW_STATION_TABLE_LOWER ;
 int MAX_STATIONS ;
 int ipw_write_direct (struct ipw_priv*,scalar_t__,struct ipw_station_entry*,int) ;
 int memcmp (int ,int*,int ) ;
 int memcpy (int ,int*,int ) ;

__attribute__((used)) static u8 ipw_add_station(struct ipw_priv *priv, u8 * bssid)
{
 struct ipw_station_entry entry;
 int i;

 for (i = 0; i < priv->num_stations; i++) {
  if (!memcmp(priv->stations[i], bssid, ETH_ALEN)) {

   priv->missed_adhoc_beacons = 0;
   if (!(priv->config & CFG_STATIC_CHANNEL))

    priv->config &= ~CFG_ADHOC_PERSIST;

   return i;
  }
 }

 if (i == MAX_STATIONS)
  return IPW_INVALID_STATION;

 IPW_DEBUG_SCAN("Adding AdHoc station: %pM\n", bssid);

 entry.reserved = 0;
 entry.support_mode = 0;
 memcpy(entry.mac_addr, bssid, ETH_ALEN);
 memcpy(priv->stations[i], bssid, ETH_ALEN);
 ipw_write_direct(priv, IPW_STATION_TABLE_LOWER + i * sizeof(entry),
    &entry, sizeof(entry));
 priv->num_stations++;

 return i;
}
