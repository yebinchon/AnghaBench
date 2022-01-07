
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_if_info {int dev; } ;


 int mii_link_ok (struct mii_if_info*) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;

void mii_check_link (struct mii_if_info *mii)
{
 int cur_link = mii_link_ok(mii);
 int prev_link = netif_carrier_ok(mii->dev);

 if (cur_link && !prev_link)
  netif_carrier_on(mii->dev);
 else if (prev_link && !cur_link)
  netif_carrier_off(mii->dev);
}
