
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uml_net_private {scalar_t__ user; } ;
struct TYPE_2__ {int ** argv; } ;
struct slirp_init {TYPE_1__ argw; } ;
struct slirp_data {int pid; int slave; TYPE_1__ argw; int slip; struct net_device* dev; } ;
struct net_device {int tx_queue_len; int flags; int type; scalar_t__ addr_len; int * header_ops; scalar_t__ hard_header_len; } ;


 int ARPHRD_SLIP ;
 int IFF_NOARP ;
 struct uml_net_private* netdev_priv (struct net_device*) ;
 int printk (char*,...) ;
 int slip_proto_init (int *) ;

void slirp_init(struct net_device *dev, void *data)
{
 struct uml_net_private *private;
 struct slirp_data *spri;
 struct slirp_init *init = data;
 int i;

 private = netdev_priv(dev);
 spri = (struct slirp_data *) private->user;

 spri->argw = init->argw;
 spri->pid = -1;
 spri->slave = -1;
 spri->dev = dev;

 slip_proto_init(&spri->slip);

 dev->hard_header_len = 0;
 dev->header_ops = ((void*)0);
 dev->addr_len = 0;
 dev->type = ARPHRD_SLIP;
 dev->tx_queue_len = 256;
 dev->flags = IFF_NOARP;
 printk("SLIRP backend - command line:");
 for (i = 0; spri->argw.argv[i] != ((void*)0); i++)
  printk(" '%s'",spri->argw.argv[i]);
 printk("\n");
}
