
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct net_device {int name; } ;
struct TYPE_2__ {int broadcast_channel; } ;
struct hpsb_host {TYPE_1__ csr; int id; int device; } ;
struct eth1394_priv {int broadcast_channel; struct net_device* wake_dev; int wake; scalar_t__ local_fifo; struct hpsb_host* host; int lock; int ip_node_list; } ;
struct eth1394_host_info {struct net_device* dev; struct hpsb_host* host; } ;


 scalar_t__ CSR1212_INVALID_ADDR_SPACE ;
 int ETH1394_PRINT (int ,int ,char*,int ) ;
 int ETH1394_PRINT_G (int ,char*) ;
 int ETHER1394_REGION_ADDR_LEN ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int KERN_ERR ;
 int KERN_INFO ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int addr_ops ;
 struct net_device* alloc_netdev (int,char*,int ) ;
 int eth1394_highlevel ;
 int ether1394_init_dev ;
 int ether1394_recv_init (struct eth1394_priv*) ;
 int ether1394_reset_priv (struct net_device*,int) ;
 int ether1394_wake_queue ;
 int free_netdev (struct net_device*) ;
 scalar_t__ hpsb_allocate_and_register_addrspace (int *,struct hpsb_host*,int *,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ hpsb_config_rom_ip1394_add (struct hpsb_host*) ;
 int hpsb_config_rom_ip1394_remove (struct hpsb_host*) ;
 struct eth1394_host_info* hpsb_create_hostinfo (int *,struct hpsb_host*,int) ;
 int hpsb_destroy_hostinfo (int *,struct hpsb_host*) ;
 int hpsb_unregister_addrspace (int *,struct hpsb_host*,scalar_t__) ;
 struct eth1394_priv* netdev_priv (struct net_device*) ;
 scalar_t__ register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void ether1394_add_host(struct hpsb_host *host)
{
 struct eth1394_host_info *hi = ((void*)0);
 struct net_device *dev = ((void*)0);
 struct eth1394_priv *priv;
 u64 fifo_addr;

 if (hpsb_config_rom_ip1394_add(host) != 0) {
  ETH1394_PRINT_G(KERN_ERR, "Can't add IP-over-1394 ROM entry\n");
  return;
 }

 fifo_addr = hpsb_allocate_and_register_addrspace(
   &eth1394_highlevel, host, &addr_ops,
   ETHER1394_REGION_ADDR_LEN, ETHER1394_REGION_ADDR_LEN,
   CSR1212_INVALID_ADDR_SPACE, CSR1212_INVALID_ADDR_SPACE);
 if (fifo_addr == CSR1212_INVALID_ADDR_SPACE) {
  ETH1394_PRINT_G(KERN_ERR, "Cannot register CSR space\n");
  hpsb_config_rom_ip1394_remove(host);
  return;
 }

 dev = alloc_netdev(sizeof(*priv), "eth%d", ether1394_init_dev);
 if (dev == ((void*)0)) {
  ETH1394_PRINT_G(KERN_ERR, "Out of memory\n");
  goto out;
 }

 SET_NETDEV_DEV(dev, &host->device);

 priv = netdev_priv(dev);
 INIT_LIST_HEAD(&priv->ip_node_list);
 spin_lock_init(&priv->lock);
 priv->host = host;
 priv->local_fifo = fifo_addr;
 INIT_WORK(&priv->wake, ether1394_wake_queue);
 priv->wake_dev = dev;

 hi = hpsb_create_hostinfo(&eth1394_highlevel, host, sizeof(*hi));
 if (hi == ((void*)0)) {
  ETH1394_PRINT_G(KERN_ERR, "Out of memory\n");
  goto out;
 }

 ether1394_reset_priv(dev, 1);

 if (register_netdev(dev)) {
  ETH1394_PRINT_G(KERN_ERR, "Cannot register the driver\n");
  goto out;
 }

 ETH1394_PRINT(KERN_INFO, dev->name, "IPv4 over IEEE 1394 (fw-host%d)\n",
        host->id);

 hi->host = host;
 hi->dev = dev;



 priv->broadcast_channel = host->csr.broadcast_channel & 0x3f;

 ether1394_recv_init(priv);
 return;
out:
 if (dev)
  free_netdev(dev);
 if (hi)
  hpsb_destroy_hostinfo(&eth1394_highlevel, host);
 hpsb_unregister_addrspace(&eth1394_highlevel, host, fifo_addr);
 hpsb_config_rom_ip1394_remove(host);
}
