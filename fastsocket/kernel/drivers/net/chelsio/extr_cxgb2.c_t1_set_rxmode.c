
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct t1_rx_mode {int list; scalar_t__ idx; struct net_device* dev; } ;
struct net_device {size_t if_port; int mc_list; struct adapter* ml_priv; } ;
struct cmac {TYPE_1__* ops; } ;
struct adapter {TYPE_2__* port; } ;
struct TYPE_4__ {struct cmac* mac; } ;
struct TYPE_3__ {int (* set_rx_mode ) (struct cmac*,struct t1_rx_mode*) ;} ;


 int stub1 (struct cmac*,struct t1_rx_mode*) ;

__attribute__((used)) static void t1_set_rxmode(struct net_device *dev)
{
 struct adapter *adapter = dev->ml_priv;
 struct cmac *mac = adapter->port[dev->if_port].mac;
 struct t1_rx_mode rm;

 rm.dev = dev;
 rm.idx = 0;
 rm.list = dev->mc_list;
 mac->ops->set_rx_mode(mac, &rm);
}
