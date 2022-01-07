
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {int channel; struct b43_phy_operations* ops; } ;
struct b43_wldev {int wl; struct b43_phy phy; } ;
struct b43_phy_operations {int (* init ) (struct b43_wldev*) ;int (* software_rfkill ) (struct b43_wldev*,int) ;int (* exit ) (struct b43_wldev*) ;int (* get_default_chan ) (struct b43_wldev*) ;} ;


 int b43_switch_channel (struct b43_wldev*,int ) ;
 int b43err (int ,char*) ;
 int stub1 (struct b43_wldev*) ;
 int stub2 (struct b43_wldev*,int) ;
 int stub3 (struct b43_wldev*) ;
 int stub4 (struct b43_wldev*) ;
 int stub5 (struct b43_wldev*) ;
 int stub6 (struct b43_wldev*,int) ;

int b43_phy_init(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 const struct b43_phy_operations *ops = phy->ops;
 int err;

 phy->channel = ops->get_default_chan(dev);

 ops->software_rfkill(dev, 0);
 err = ops->init(dev);
 if (err) {
  b43err(dev->wl, "PHY init failed\n");
  goto err_block_rf;
 }


 err = b43_switch_channel(dev, ops->get_default_chan(dev));
 if (err) {
  b43err(dev->wl, "PHY init: Channel switch to default failed\n");
  goto err_phy_exit;
 }

 return 0;

err_phy_exit:
 if (ops->exit)
  ops->exit(dev);
err_block_rf:
 ops->software_rfkill(dev, 1);

 return err;
}
