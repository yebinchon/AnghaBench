
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yam_port {int bitrate; int baudrate; int send_queue; scalar_t__ irq; scalar_t__ iobase; struct net_device* dev; int pers; int slot; int txtail; int txd; int holdd; scalar_t__ dupmode; int magic; } ;
struct net_device {int dev_addr; int broadcast; int addr_len; int mtu; int hard_header_len; int type; int * header_ops; int * netdev_ops; scalar_t__ irq; scalar_t__ base_addr; } ;


 int ARPHRD_AX25 ;
 int AX25_ADDR_LEN ;
 int AX25_MAX_HEADER_LEN ;
 int AX25_MTU ;
 int DEFAULT_BITRATE ;
 int DEFAULT_HOLDD ;
 int DEFAULT_PERS ;
 int DEFAULT_SLOT ;
 int DEFAULT_TXD ;
 int DEFAULT_TXTAIL ;
 int YAM_MAGIC ;
 int ax25_bcast ;
 int ax25_defaddr ;
 int ax25_header_ops ;
 int memcpy (int ,int *,int ) ;
 struct yam_port* netdev_priv (struct net_device*) ;
 int skb_queue_head_init (int *) ;
 int yam_netdev_ops ;

__attribute__((used)) static void yam_setup(struct net_device *dev)
{
 struct yam_port *yp = netdev_priv(dev);

 yp->magic = YAM_MAGIC;
 yp->bitrate = DEFAULT_BITRATE;
 yp->baudrate = DEFAULT_BITRATE * 2;
 yp->iobase = 0;
 yp->irq = 0;
 yp->dupmode = 0;
 yp->holdd = DEFAULT_HOLDD;
 yp->txd = DEFAULT_TXD;
 yp->txtail = DEFAULT_TXTAIL;
 yp->slot = DEFAULT_SLOT;
 yp->pers = DEFAULT_PERS;
 yp->dev = dev;

 dev->base_addr = yp->iobase;
 dev->irq = yp->irq;

 skb_queue_head_init(&yp->send_queue);

 dev->netdev_ops = &yam_netdev_ops;
 dev->header_ops = &ax25_header_ops;

 dev->type = ARPHRD_AX25;
 dev->hard_header_len = AX25_MAX_HEADER_LEN;
 dev->mtu = AX25_MTU;
 dev->addr_len = AX25_ADDR_LEN;
 memcpy(dev->broadcast, &ax25_bcast, AX25_ADDR_LEN);
 memcpy(dev->dev_addr, &ax25_defaddr, AX25_ADDR_LEN);
}
