
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_net_private {int dummy; } ;
struct sk_buff {int len; int data; } ;


 int net_send (int,int ,int ) ;
 int skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int etap_write(int fd, struct sk_buff *skb, struct uml_net_private *lp)
{
 skb_push(skb, 2);
 return net_send(fd, skb->data, skb->len);
}
