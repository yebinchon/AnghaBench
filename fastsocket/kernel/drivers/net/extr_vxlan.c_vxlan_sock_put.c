
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;


 int sock_put (int ) ;

__attribute__((used)) static void vxlan_sock_put(struct sk_buff *skb)
{
 sock_put(skb->sk);
}
