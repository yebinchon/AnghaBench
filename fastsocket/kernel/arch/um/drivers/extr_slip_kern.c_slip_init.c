
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_net_private {scalar_t__ user; } ;
struct slip_init {int gate_addr; } ;
struct slip_data {int slave; int gate_addr; int slip; struct net_device* dev; int * addr; int name; } ;
struct net_device {int tx_queue_len; int flags; int type; scalar_t__ addr_len; int * header_ops; scalar_t__ hard_header_len; } ;


 int ARPHRD_SLIP ;
 int IFF_NOARP ;
 int memset (int ,int ,int) ;
 struct uml_net_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ) ;
 int slip_proto_init (int *) ;

__attribute__((used)) static void slip_init(struct net_device *dev, void *data)
{
 struct uml_net_private *private;
 struct slip_data *spri;
 struct slip_init *init = data;

 private = netdev_priv(dev);
 spri = (struct slip_data *) private->user;

 memset(spri->name, 0, sizeof(spri->name));
 spri->addr = ((void*)0);
 spri->gate_addr = init->gate_addr;
 spri->slave = -1;
 spri->dev = dev;

 slip_proto_init(&spri->slip);

 dev->hard_header_len = 0;
 dev->header_ops = ((void*)0);
 dev->addr_len = 0;
 dev->type = ARPHRD_SLIP;
 dev->tx_queue_len = 256;
 dev->flags = IFF_NOARP;
 printk("SLIP backend - SLIP IP = %s\n", spri->gate_addr);
}
