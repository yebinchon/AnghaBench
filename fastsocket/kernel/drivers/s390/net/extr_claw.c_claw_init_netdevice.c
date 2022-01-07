
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int flags; int * netdev_ops; int type; scalar_t__ addr_len; scalar_t__ hard_header_len; int mtu; int name; } ;


 int ARPHRD_SLIP ;
 int CLAW_DBF_TEXT (int,int ,char*) ;
 int CLAW_DBF_TEXT_ (int,int ,char*,int ) ;
 int CLAW_DEFAULT_MTU_SIZE ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int claw_netdev_ops ;
 int setup ;

__attribute__((used)) static void
claw_init_netdevice(struct net_device * dev)
{
 CLAW_DBF_TEXT(2, setup, "init_dev");
 CLAW_DBF_TEXT_(2, setup, "%s", dev->name);
 dev->mtu = CLAW_DEFAULT_MTU_SIZE;
 dev->hard_header_len = 0;
 dev->addr_len = 0;
 dev->type = ARPHRD_SLIP;
 dev->tx_queue_len = 1300;
 dev->flags = IFF_POINTOPOINT | IFF_NOARP;
 dev->netdev_ops = &claw_netdev_ops;
 CLAW_DBF_TEXT(2, setup, "initok");
 return;
}
