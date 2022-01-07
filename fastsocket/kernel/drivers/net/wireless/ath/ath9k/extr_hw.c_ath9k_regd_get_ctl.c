
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath_regulatory {int dummy; } ;
struct ath9k_channel {TYPE_1__* chan; } ;
struct TYPE_2__ {int band; } ;


 int CTL_11A ;
 int CTL_11B ;
 int CTL_11G ;
 scalar_t__ IS_CHAN_B (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_G (struct ath9k_channel*) ;
 int ath_regd_get_band_ctl (struct ath_regulatory*,int ) ;

u32 ath9k_regd_get_ctl(struct ath_regulatory *reg, struct ath9k_channel *chan)
{
 u32 ctl = ath_regd_get_band_ctl(reg, chan->chan->band);

 if (IS_CHAN_B(chan))
  ctl |= CTL_11B;
 else if (IS_CHAN_G(chan))
  ctl |= CTL_11G;
 else
  ctl |= CTL_11A;

 return ctl;
}
