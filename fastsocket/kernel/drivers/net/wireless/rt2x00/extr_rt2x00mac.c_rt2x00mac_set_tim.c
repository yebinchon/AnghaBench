
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int intf_work; int hw; int flags; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int DEVICE_STATE_ENABLED_RADIO ;
 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct rt2x00_dev*) ;
 int ieee80211_queue_work (int ,int *) ;
 int rt2x00mac_set_tim_iter ;
 int test_bit (int ,int *) ;

int rt2x00mac_set_tim(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
        bool set)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;

 if (!test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  return 0;

 ieee80211_iterate_active_interfaces_atomic(
  rt2x00dev->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
  rt2x00mac_set_tim_iter, rt2x00dev);


 ieee80211_queue_work(rt2x00dev->hw, &rt2x00dev->intf_work);
 return 0;
}
