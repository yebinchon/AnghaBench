
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int flags; } ;
struct il_priv {TYPE_1__ staging; } ;


 int RATE_1M_PLCP ;
 int RATE_6M_PLCP ;
 int RXON_FLG_BAND_24G_MSK ;

u8
il_get_lowest_plcp(struct il_priv *il)
{




 if (il->staging.flags & RXON_FLG_BAND_24G_MSK)
  return RATE_1M_PLCP;
 else
  return RATE_6M_PLCP;
}
