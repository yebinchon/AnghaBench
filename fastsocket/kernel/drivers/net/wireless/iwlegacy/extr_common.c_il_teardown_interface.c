
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {struct ieee80211_vif* scan_vif; int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int il_force_scan_end (struct il_priv*) ;
 int il_scan_cancel_timeout (struct il_priv*,int) ;
 int il_set_mode (struct il_priv*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void
il_teardown_interface(struct il_priv *il, struct ieee80211_vif *vif)
{
 lockdep_assert_held(&il->mutex);

 if (il->scan_vif == vif) {
  il_scan_cancel_timeout(il, 200);
  il_force_scan_end(il);
 }

 il_set_mode(il);
}
