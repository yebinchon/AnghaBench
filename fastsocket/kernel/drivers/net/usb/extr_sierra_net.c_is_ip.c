
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; } ;


 int ETH_P_IP ;
 scalar_t__ cpu_to_be16 (int ) ;

__attribute__((used)) static inline int is_ip(struct sk_buff *skb)
{
 return skb->protocol == cpu_to_be16(ETH_P_IP);
}
