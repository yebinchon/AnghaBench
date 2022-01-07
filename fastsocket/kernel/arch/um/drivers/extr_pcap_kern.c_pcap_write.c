
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_net_private {int dummy; } ;
struct sk_buff {int dummy; } ;


 int EPERM ;

__attribute__((used)) static int pcap_write(int fd, struct sk_buff *skb, struct uml_net_private *lp)
{
 return -EPERM;
}
