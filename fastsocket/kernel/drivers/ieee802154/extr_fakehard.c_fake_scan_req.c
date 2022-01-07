
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 scalar_t__ IEEE802154_MAC_SCAN_ED ;
 int IEEE802154_SUCCESS ;
 int ieee802154_nl_scan_confirm (struct net_device*,int ,scalar_t__,int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int fake_scan_req(struct net_device *dev, u8 type, u32 channels,
  u8 page, u8 duration)
{
 u8 edl[27] = {};
 return ieee802154_nl_scan_confirm(dev, IEEE802154_SUCCESS, type,
   channels, page,
   type == IEEE802154_MAC_SCAN_ED ? edl : ((void*)0));
}
