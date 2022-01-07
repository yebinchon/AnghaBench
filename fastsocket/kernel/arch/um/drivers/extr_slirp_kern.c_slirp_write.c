
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_net_private {int user; } ;
struct slirp_data {int dummy; } ;
struct sk_buff {int len; int data; } ;


 int slirp_user_write (int,int ,int ,struct slirp_data*) ;

__attribute__((used)) static int slirp_write(int fd, struct sk_buff *skb, struct uml_net_private *lp)
{
 return slirp_user_write(fd, skb->data, skb->len,
    (struct slirp_data *) &lp->user);
}
