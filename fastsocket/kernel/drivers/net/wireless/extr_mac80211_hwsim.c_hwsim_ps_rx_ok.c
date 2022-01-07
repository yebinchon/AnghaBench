
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct mac80211_hwsim_data {int ps; int ps_poll_pending; TYPE_2__* hw; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {int perm_addr; } ;


 int ETH_ALEN ;




 int memcmp (int ,int ,int ) ;

__attribute__((used)) static bool hwsim_ps_rx_ok(struct mac80211_hwsim_data *data,
      struct sk_buff *skb)
{
 switch (data->ps) {
 case 130:
  return 1;
 case 129:
  return 0;
 case 131:


  return 1;
 case 128:


  if (data->ps_poll_pending &&
      memcmp(data->hw->wiphy->perm_addr, skb->data + 4,
      ETH_ALEN) == 0) {
   data->ps_poll_pending = 0;
   return 1;
  }
  return 0;
 }

 return 1;
}
