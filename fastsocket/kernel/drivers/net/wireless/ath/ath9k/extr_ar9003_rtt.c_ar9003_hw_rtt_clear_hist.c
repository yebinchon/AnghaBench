
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int rxchainmask; TYPE_1__* caldata; } ;
struct TYPE_2__ {int rtt_done; } ;


 int AR9300_MAX_CHAINS ;
 int MAX_RTT_TABLE_ENTRY ;
 int ar9003_hw_rtt_load_hist_entry (struct ath_hw*,int,int,int ) ;

void ar9003_hw_rtt_clear_hist(struct ath_hw *ah)
{
 int chain, i;

 for (chain = 0; chain < AR9300_MAX_CHAINS; chain++) {
  if (!(ah->rxchainmask & (1 << chain)))
   continue;
  for (i = 0; i < MAX_RTT_TABLE_ENTRY; i++)
   ar9003_hw_rtt_load_hist_entry(ah, chain, i, 0);
 }

 if (ah->caldata)
  ah->caldata->rtt_done = 0;
}
