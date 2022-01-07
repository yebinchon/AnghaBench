
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ieee802154_addr {int dummy; } ;


 int IEEE802154_SUCCESS ;
 int ieee802154_nl_disassoc_confirm (struct net_device*,int ) ;

__attribute__((used)) static int fake_disassoc_req(struct net_device *dev,
  struct ieee802154_addr *addr, u8 reason)
{
 return ieee802154_nl_disassoc_confirm(dev, IEEE802154_SUCCESS);
}
