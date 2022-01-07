
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfc2734_header {int dummy; } ;
struct net_device {int name; int broadcast; int dev_addr; int mtu; } ;
struct fwnet_device {int dev_link; struct net_device* netdev; struct fw_card* card; int peer_list; int sent_list; int broadcasted_list; int packet_list; int local_fifo; scalar_t__ broadcast_xmt_datagramlabel; scalar_t__ broadcast_xmt_max_payload; int * broadcast_rcv_context; int broadcast_state; int lock; } ;
struct fw_unit {int dummy; } ;
struct fw_device {struct fw_card* card; } ;
struct fw_card {int max_receive; unsigned long long guid; int device; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int FWNET_BROADCAST_ERROR ;
 int FWNET_NO_FIFO_ADDR ;
 int IEEE1394_GASP_HDR_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 struct net_device* alloc_netdev (int,char*,int ) ;
 int free_netdev (struct net_device*) ;
 int fw_error (char*) ;
 int fw_notify (char*,int ,unsigned long long) ;
 struct fw_device* fw_parent_device (struct fw_unit*) ;
 struct fw_unit* fw_unit (struct device*) ;
 int fwnet_add_peer (struct fwnet_device*,struct fw_unit*,struct fw_device*) ;
 struct fwnet_device* fwnet_dev_find (struct fw_card*) ;
 int fwnet_device_list ;
 int fwnet_device_mutex ;
 int fwnet_init_dev ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int min (unsigned int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fwnet_device* netdev_priv (struct net_device*) ;
 int put_unaligned_be64 (unsigned long long,int ) ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int fwnet_probe(struct device *_dev)
{
 struct fw_unit *unit = fw_unit(_dev);
 struct fw_device *device = fw_parent_device(unit);
 struct fw_card *card = device->card;
 struct net_device *net;
 bool allocated_netdev = 0;
 struct fwnet_device *dev;
 unsigned max_mtu;
 int ret;

 mutex_lock(&fwnet_device_mutex);

 dev = fwnet_dev_find(card);
 if (dev) {
  net = dev->netdev;
  goto have_dev;
 }

 net = alloc_netdev(sizeof(*dev), "firewire%d", fwnet_init_dev);
 if (net == ((void*)0)) {
  ret = -ENOMEM;
  goto out;
 }

 allocated_netdev = 1;
 SET_NETDEV_DEV(net, card->device);
 dev = netdev_priv(net);

 spin_lock_init(&dev->lock);
 dev->broadcast_state = FWNET_BROADCAST_ERROR;
 dev->broadcast_rcv_context = ((void*)0);
 dev->broadcast_xmt_max_payload = 0;
 dev->broadcast_xmt_datagramlabel = 0;

 dev->local_fifo = FWNET_NO_FIFO_ADDR;

 INIT_LIST_HEAD(&dev->packet_list);
 INIT_LIST_HEAD(&dev->broadcasted_list);
 INIT_LIST_HEAD(&dev->sent_list);
 INIT_LIST_HEAD(&dev->peer_list);

 dev->card = card;
 dev->netdev = net;





 max_mtu = (1 << (card->max_receive + 1))
    - sizeof(struct rfc2734_header) - IEEE1394_GASP_HDR_SIZE;
 net->mtu = min(1500U, max_mtu);


 put_unaligned_be64(card->guid, net->dev_addr);
 put_unaligned_be64(~0ULL, net->broadcast);
 ret = register_netdev(net);
 if (ret) {
  fw_error("Cannot register the driver\n");
  goto out;
 }

 list_add_tail(&dev->dev_link, &fwnet_device_list);
 fw_notify("%s: IPv4 over FireWire on device %016llx\n",
    net->name, (unsigned long long)card->guid);
 have_dev:
 ret = fwnet_add_peer(dev, unit, device);
 if (ret && allocated_netdev) {
  unregister_netdev(net);
  list_del(&dev->dev_link);
 }
 out:
 if (ret && allocated_netdev)
  free_netdev(net);

 mutex_unlock(&fwnet_device_mutex);

 return ret;
}
