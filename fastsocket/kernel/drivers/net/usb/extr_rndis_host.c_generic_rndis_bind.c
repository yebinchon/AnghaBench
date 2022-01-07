
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct usbnet {scalar_t__ hard_mtu; int maxpacket; int rx_urb_size; TYPE_1__* driver_info; int out; int udev; int data; struct net_device* net; } ;
struct usb_interface {int dev; } ;
struct rndis_set_c {int dummy; } ;
struct rndis_set {void* msg_len; int msg_type; void* offset; void* len; int oid; } ;
struct rndis_query_c {int dummy; } ;
struct rndis_query {int dummy; } ;
typedef void rndis_msg_hdr ;
struct rndis_init_c {int packet_alignment; int max_transfer_size; } ;
struct rndis_init {void* max_transfer_size; void* minor_version; void* major_version; void* msg_len; int msg_type; } ;
struct rndis_halt {void* msg_len; int msg_type; void* offset; void* len; int oid; } ;
struct rndis_data_hdr {int dummy; } ;
struct net_device {scalar_t__ hard_header_len; scalar_t__ mtu; int perm_addr; int dev_addr; int * netdev_ops; } ;
struct cdc_state {int * data; } ;
typedef scalar_t__ __le32 ;
struct TYPE_2__ {scalar_t__ (* early_init ) (struct usbnet*) ;} ;


 int CONTROL_BUFFER_SIZE ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ETH_ALEN ;
 int FLAG_RNDIS_PHYM_NOT_WIRELESS ;
 int FLAG_RNDIS_PHYM_WIRELESS ;
 int GFP_KERNEL ;
 int OID_802_3_PERMANENT_ADDRESS ;
 int OID_GEN_CURRENT_PACKET_FILTER ;
 int OID_GEN_PHYSICAL_MEDIUM ;
 scalar_t__ RNDIS_DEFAULT_FILTER ;
 int RNDIS_MSG_HALT ;
 int RNDIS_MSG_INIT ;
 int RNDIS_MSG_SET ;
 scalar_t__ RNDIS_PHYSICAL_MEDIUM_UNSPECIFIED ;
 scalar_t__ RNDIS_PHYSICAL_MEDIUM_WIRELESS_LAN ;
 void* cpu_to_le32 (int) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int,...) ;
 int dev_warn (int *,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int driver_of (struct usb_interface*) ;
 int kfree (void*) ;
 void* kmalloc (int ,int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,unsigned char*,int) ;
 int memset (struct rndis_set*,int ,int) ;
 scalar_t__ netif_msg_probe (struct usbnet*) ;
 int rndis_command (struct usbnet*,void*,int ) ;
 int rndis_netdev_ops ;
 int rndis_query (struct usbnet*,struct usb_interface*,void*,int ,int,void**,int*) ;
 scalar_t__ stub1 (struct usbnet*) ;
 scalar_t__ unlikely (int) ;
 int usb_driver_release_interface (int ,int *) ;
 int usb_maxpacket (int ,int ,int) ;
 int usb_set_intfdata (int *,int *) ;
 int usbnet_generic_cdc_bind (struct usbnet*,struct usb_interface*) ;

int
generic_rndis_bind(struct usbnet *dev, struct usb_interface *intf, int flags)
{
 int retval;
 struct net_device *net = dev->net;
 struct cdc_state *info = (void *) &dev->data;
 union {
  void *buf;
  struct rndis_msg_hdr *header;
  struct rndis_init *init;
  struct rndis_init_c *init_c;
  struct rndis_query *get;
  struct rndis_query_c *get_c;
  struct rndis_set *set;
  struct rndis_set_c *set_c;
  struct rndis_halt *halt;
 } u;
 u32 tmp;
 __le32 phym_unspec, *phym;
 int reply_len;
 unsigned char *bp;


 u.buf = kmalloc(CONTROL_BUFFER_SIZE, GFP_KERNEL);
 if (!u.buf)
  return -ENOMEM;
 retval = usbnet_generic_cdc_bind(dev, intf);
 if (retval < 0)
  goto fail;

 u.init->msg_type = RNDIS_MSG_INIT;
 u.init->msg_len = cpu_to_le32(sizeof *u.init);
 u.init->major_version = cpu_to_le32(1);
 u.init->minor_version = cpu_to_le32(0);
 net->hard_header_len += sizeof (struct rndis_data_hdr);
 dev->hard_mtu = net->mtu + net->hard_header_len;

 dev->maxpacket = usb_maxpacket(dev->udev, dev->out, 1);
 if (dev->maxpacket == 0) {
  if (netif_msg_probe(dev))
   dev_dbg(&intf->dev, "dev->maxpacket can't be 0\n");
  retval = -EINVAL;
  goto fail_and_release;
 }

 dev->rx_urb_size = dev->hard_mtu + (dev->maxpacket + 1);
 dev->rx_urb_size &= ~(dev->maxpacket - 1);
 u.init->max_transfer_size = cpu_to_le32(dev->rx_urb_size);

 net->netdev_ops = &rndis_netdev_ops;

 retval = rndis_command(dev, u.header, CONTROL_BUFFER_SIZE);
 if (unlikely(retval < 0)) {

  dev_err(&intf->dev, "RNDIS init failed, %d\n", retval);
  goto fail_and_release;
 }
 tmp = le32_to_cpu(u.init_c->max_transfer_size);
 if (tmp < dev->hard_mtu) {
  if (tmp <= net->hard_header_len) {
   dev_err(&intf->dev,
    "dev can't take %u byte packets (max %u)\n",
    dev->hard_mtu, tmp);
   retval = -EINVAL;
   goto halt_fail_and_release;
  }
  dev_warn(&intf->dev,
    "dev can't take %u byte packets (max %u), "
    "adjusting MTU to %u\n",
    dev->hard_mtu, tmp, tmp - net->hard_header_len);
  dev->hard_mtu = tmp;
  net->mtu = dev->hard_mtu - net->hard_header_len;
 }


 dev_dbg(&intf->dev,
  "hard mtu %u (%u from dev), rx buflen %Zu, align %d\n",
  dev->hard_mtu, tmp, dev->rx_urb_size,
  1 << le32_to_cpu(u.init_c->packet_alignment));



 if (dev->driver_info->early_init &&
   dev->driver_info->early_init(dev) != 0)
  goto halt_fail_and_release;


 phym = ((void*)0);
 reply_len = sizeof *phym;
 retval = rndis_query(dev, intf, u.buf, OID_GEN_PHYSICAL_MEDIUM,
   0, (void **) &phym, &reply_len);
 if (retval != 0 || !phym) {

  phym_unspec = RNDIS_PHYSICAL_MEDIUM_UNSPECIFIED;
  phym = &phym_unspec;
 }
 if ((flags & FLAG_RNDIS_PHYM_WIRELESS) &&
   *phym != RNDIS_PHYSICAL_MEDIUM_WIRELESS_LAN) {
  if (netif_msg_probe(dev))
   dev_dbg(&intf->dev, "driver requires wireless "
    "physical medium, but device is not.\n");
  retval = -ENODEV;
  goto halt_fail_and_release;
 }
 if ((flags & FLAG_RNDIS_PHYM_NOT_WIRELESS) &&
   *phym == RNDIS_PHYSICAL_MEDIUM_WIRELESS_LAN) {
  if (netif_msg_probe(dev))
   dev_dbg(&intf->dev, "driver requires non-wireless "
    "physical medium, but device is wireless.\n");
  retval = -ENODEV;
  goto halt_fail_and_release;
 }


 reply_len = ETH_ALEN;
 retval = rndis_query(dev, intf, u.buf, OID_802_3_PERMANENT_ADDRESS,
   48, (void **) &bp, &reply_len);
 if (unlikely(retval< 0)) {
  dev_err(&intf->dev, "rndis get ethaddr, %d\n", retval);
  goto halt_fail_and_release;
 }
 memcpy(net->dev_addr, bp, ETH_ALEN);
 memcpy(net->perm_addr, bp, ETH_ALEN);


 memset(u.set, 0, sizeof *u.set);
 u.set->msg_type = RNDIS_MSG_SET;
 u.set->msg_len = cpu_to_le32(4 + sizeof *u.set);
 u.set->oid = OID_GEN_CURRENT_PACKET_FILTER;
 u.set->len = cpu_to_le32(4);
 u.set->offset = cpu_to_le32((sizeof *u.set) - 8);
 *(__le32 *)(u.buf + sizeof *u.set) = RNDIS_DEFAULT_FILTER;

 retval = rndis_command(dev, u.header, CONTROL_BUFFER_SIZE);
 if (unlikely(retval < 0)) {
  dev_err(&intf->dev, "rndis set packet filter, %d\n", retval);
  goto halt_fail_and_release;
 }

 retval = 0;

 kfree(u.buf);
 return retval;

halt_fail_and_release:
 memset(u.halt, 0, sizeof *u.halt);
 u.halt->msg_type = RNDIS_MSG_HALT;
 u.halt->msg_len = cpu_to_le32(sizeof *u.halt);
 (void) rndis_command(dev, (void *)u.halt, CONTROL_BUFFER_SIZE);
fail_and_release:
 usb_set_intfdata(info->data, ((void*)0));
 usb_driver_release_interface(driver_of(intf), info->data);
 info->data = ((void*)0);
fail:
 kfree(u.buf);
 return retval;
}
