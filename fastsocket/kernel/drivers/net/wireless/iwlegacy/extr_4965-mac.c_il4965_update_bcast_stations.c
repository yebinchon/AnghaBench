
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int il4965_update_bcast_station (struct il_priv*) ;

int
il4965_update_bcast_stations(struct il_priv *il)
{
 return il4965_update_bcast_station(il);
}
