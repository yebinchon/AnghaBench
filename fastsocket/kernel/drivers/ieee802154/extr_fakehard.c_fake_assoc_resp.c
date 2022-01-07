
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ieee802154_addr {int dummy; } ;



__attribute__((used)) static int fake_assoc_resp(struct net_device *dev,
  struct ieee802154_addr *addr, u16 short_addr, u8 status)
{
 return 0;
}
