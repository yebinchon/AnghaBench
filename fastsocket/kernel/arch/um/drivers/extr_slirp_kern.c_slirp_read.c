
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uml_net_private {int user; } ;
struct slirp_data {int dummy; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_2__ {int mtu; } ;


 int skb_mac_header (struct sk_buff*) ;
 int slirp_user_read (int,int ,int ,struct slirp_data*) ;

__attribute__((used)) static int slirp_read(int fd, struct sk_buff *skb, struct uml_net_private *lp)
{
 return slirp_user_read(fd, skb_mac_header(skb), skb->dev->mtu,
          (struct slirp_data *) &lp->user);
}
