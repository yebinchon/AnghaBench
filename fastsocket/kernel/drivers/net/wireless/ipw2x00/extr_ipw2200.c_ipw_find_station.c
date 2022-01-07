
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw_priv {int num_stations; int * stations; } ;


 int ETH_ALEN ;
 int IPW_INVALID_STATION ;
 int memcmp (int ,int*,int ) ;

__attribute__((used)) static u8 ipw_find_station(struct ipw_priv *priv, u8 * bssid)
{
 int i;

 for (i = 0; i < priv->num_stations; i++)
  if (!memcmp(priv->stations[i], bssid, ETH_ALEN))
   return i;

 return IPW_INVALID_STATION;
}
