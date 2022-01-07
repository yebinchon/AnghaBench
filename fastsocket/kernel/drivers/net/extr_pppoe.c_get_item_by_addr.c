
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int remote; int sid; int dev; } ;
struct TYPE_3__ {TYPE_2__ pppoe; } ;
struct sockaddr_pppox {TYPE_1__ sa_addr; } ;
struct pppox_sock {int dummy; } ;
struct pppoe_net {int dummy; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;


 struct net_device* dev_get_by_name (struct net*,int ) ;
 int dev_put (struct net_device*) ;
 struct pppox_sock* get_item (struct pppoe_net*,int ,int ,int) ;
 struct pppoe_net* net_generic (struct net*,int ) ;
 int pppoe_net_id ;

__attribute__((used)) static inline struct pppox_sock *get_item_by_addr(struct net *net,
      struct sockaddr_pppox *sp)
{
 struct net_device *dev;
 struct pppoe_net *pn;
 struct pppox_sock *pppox_sock;

 int ifindex;

 dev = dev_get_by_name(net, sp->sa_addr.pppoe.dev);
 if (!dev)
  return ((void*)0);

 ifindex = dev->ifindex;
 pn = net_generic(net, pppoe_net_id);
 pppox_sock = get_item(pn, sp->sa_addr.pppoe.sid,
    sp->sa_addr.pppoe.remote, ifindex);
 dev_put(dev);

 return pppox_sock;
}
