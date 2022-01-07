
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct wpan_phy {int pib_lock; void* current_page; void* current_channel; } ;
struct net_device {int dummy; } ;
struct ieee802154_addr {int dummy; } ;


 int IEEE802154_INVALID_PARAMETER ;
 int ieee802154_nl_start_confirm (struct net_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wpan_phy* net_to_phy (struct net_device*) ;

__attribute__((used)) static int fake_start_req(struct net_device *dev, struct ieee802154_addr *addr,
    u8 channel, u8 page,
    u8 bcn_ord, u8 sf_ord, u8 pan_coord, u8 blx,
    u8 coord_realign)
{
 struct wpan_phy *phy = net_to_phy(dev);

 mutex_lock(&phy->pib_lock);
 phy->current_channel = channel;
 phy->current_page = page;
 mutex_unlock(&phy->pib_lock);


 ieee802154_nl_start_confirm(dev, IEEE802154_INVALID_PARAMETER);
 return 0;
}
