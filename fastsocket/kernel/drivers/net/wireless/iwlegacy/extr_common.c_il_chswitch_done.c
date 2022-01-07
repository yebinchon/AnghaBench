
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int vif; int status; } ;


 int S_CHANNEL_SWITCH_PENDING ;
 int S_EXIT_PENDING ;
 int ieee80211_chswitch_done (int ,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void
il_chswitch_done(struct il_priv *il, bool is_success)
{
 if (test_bit(S_EXIT_PENDING, &il->status))
  return;

 if (test_and_clear_bit(S_CHANNEL_SWITCH_PENDING, &il->status))
  ieee80211_chswitch_done(il->vif, is_success);
}
