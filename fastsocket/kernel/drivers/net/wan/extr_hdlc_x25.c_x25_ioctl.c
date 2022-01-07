
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int flags; int type; } ;
struct TYPE_4__ {int type; } ;
struct ifreq {TYPE_1__ ifr_settings; } ;
struct TYPE_5__ {int (* attach ) (struct net_device*,int ,int ) ;int * proto; } ;
typedef TYPE_2__ hdlc_device ;


 int ARPHRD_X25 ;
 int CAP_NET_ADMIN ;
 int EBUSY ;
 int EINVAL ;
 int ENCODING_NRZ ;
 int EPERM ;
 int IFF_UP ;


 int PARITY_CRC16_PR1_CCITT ;
 int attach_hdlc_protocol (struct net_device*,int *,int ) ;
 int capable (int ) ;
 TYPE_2__* dev_to_hdlc (struct net_device*) ;
 int netif_dormant_off (struct net_device*) ;
 int proto ;
 int stub1 (struct net_device*,int ,int ) ;

__attribute__((used)) static int x25_ioctl(struct net_device *dev, struct ifreq *ifr)
{
 hdlc_device *hdlc = dev_to_hdlc(dev);
 int result;

 switch (ifr->ifr_settings.type) {
 case 129:
  if (dev_to_hdlc(dev)->proto != &proto)
   return -EINVAL;
  ifr->ifr_settings.type = 128;
  return 0;

 case 128:
  if(!capable(CAP_NET_ADMIN))
   return -EPERM;

  if(dev->flags & IFF_UP)
   return -EBUSY;

  result=hdlc->attach(dev, ENCODING_NRZ,PARITY_CRC16_PR1_CCITT);
  if (result)
   return result;

  if ((result = attach_hdlc_protocol(dev, &proto, 0)))
   return result;
  dev->type = ARPHRD_X25;
  netif_dormant_off(dev);
  return 0;
 }

 return -EINVAL;
}
