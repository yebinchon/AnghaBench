
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static inline
int iwlagn_mac_testmode_dump(struct ieee80211_hw *hw, struct sk_buff *skb,
        struct netlink_callback *cb,
        void *data, int len)
{
 return -ENOSYS;
}
