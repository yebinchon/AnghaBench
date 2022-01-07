
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int type; int mtu; scalar_t__ addr_len; scalar_t__ hard_header_len; scalar_t__ flags; int * netdev_ops; } ;
struct TYPE_2__ {int expires; unsigned long data; int function; } ;
struct frad_local {TYPE_1__ timer; int dlci_conf; int deassoc; int assoc; int deactivate; int activate; } ;


 int SDLA_MAX_MTU ;
 int init_timer (TYPE_1__*) ;
 int netdev_boot_setup_check (struct net_device*) ;
 struct frad_local* netdev_priv (struct net_device*) ;
 int sdla_activate ;
 int sdla_assoc ;
 int sdla_deactivate ;
 int sdla_deassoc ;
 int sdla_dlci_conf ;
 int sdla_netdev_ops ;
 int sdla_poll ;

__attribute__((used)) static void setup_sdla(struct net_device *dev)
{
 struct frad_local *flp = netdev_priv(dev);

 netdev_boot_setup_check(dev);

 dev->netdev_ops = &sdla_netdev_ops;
 dev->flags = 0;
 dev->type = 0xFFFF;
 dev->hard_header_len = 0;
 dev->addr_len = 0;
 dev->mtu = SDLA_MAX_MTU;

 flp->activate = sdla_activate;
 flp->deactivate = sdla_deactivate;
 flp->assoc = sdla_assoc;
 flp->deassoc = sdla_deassoc;
 flp->dlci_conf = sdla_dlci_conf;

 init_timer(&flp->timer);
 flp->timer.expires = 1;
 flp->timer.data = (unsigned long) dev;
 flp->timer.function = sdla_poll;
}
