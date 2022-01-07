
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ppp {int req_timeout; int cr_retries; int term_retries; int keepalive_interval; int keepalive_timeout; int lock; } ;
struct net_device {int flags; int hard_header_len; int type; int * header_ops; } ;
struct TYPE_4__ {int type; } ;
struct ifreq {TYPE_1__ ifr_settings; } ;
struct hdlc_header {int dummy; } ;
struct TYPE_5__ {int (* attach ) (struct net_device*,int ,int ) ;int * proto; } ;
typedef TYPE_2__ hdlc_device ;


 int ARPHRD_PPP ;
 int CAP_NET_ADMIN ;
 int EBUSY ;
 int EINVAL ;
 int ENCODING_NRZ ;
 int EPERM ;
 int IFF_UP ;


 int PARITY_CRC16_PR1_CCITT ;
 int attach_hdlc_protocol (struct net_device*,int *,int) ;
 int capable (int ) ;
 TYPE_2__* dev_to_hdlc (struct net_device*) ;
 struct ppp* get_ppp (struct net_device*) ;
 int netif_dormant_on (struct net_device*) ;
 int ppp_header_ops ;
 int proto ;
 int spin_lock_init (int *) ;
 int stub1 (struct net_device*,int ,int ) ;

__attribute__((used)) static int ppp_ioctl(struct net_device *dev, struct ifreq *ifr)
{
 hdlc_device *hdlc = dev_to_hdlc(dev);
 struct ppp *ppp;
 int result;

 switch (ifr->ifr_settings.type) {
 case 129:
  if (dev_to_hdlc(dev)->proto != &proto)
   return -EINVAL;
  ifr->ifr_settings.type = 128;
  return 0;

 case 128:
  if (!capable(CAP_NET_ADMIN))
   return -EPERM;

  if (dev->flags & IFF_UP)
   return -EBUSY;



  result = hdlc->attach(dev, ENCODING_NRZ,PARITY_CRC16_PR1_CCITT);
  if (result)
   return result;

  result = attach_hdlc_protocol(dev, &proto, sizeof(struct ppp));
  if (result)
   return result;

  ppp = get_ppp(dev);
  spin_lock_init(&ppp->lock);
  ppp->req_timeout = 2;
  ppp->cr_retries = 10;
  ppp->term_retries = 2;
  ppp->keepalive_interval = 10;
  ppp->keepalive_timeout = 60;

  dev->hard_header_len = sizeof(struct hdlc_header);
  dev->header_ops = &ppp_header_ops;
  dev->type = ARPHRD_PPP;
  netif_dormant_on(dev);
  return 0;
 }

 return -EINVAL;
}
