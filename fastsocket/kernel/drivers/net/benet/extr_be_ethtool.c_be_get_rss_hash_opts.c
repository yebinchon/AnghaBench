
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct be_adapter {int rss_flags; } ;


 int RSS_ENABLE_IPV4 ;
 int RSS_ENABLE_IPV6 ;
 int RSS_ENABLE_TCP_IPV4 ;
 int RSS_ENABLE_TCP_IPV6 ;
 int RSS_ENABLE_UDP_IPV4 ;
 int RSS_ENABLE_UDP_IPV6 ;
 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;





__attribute__((used)) static u64 be_get_rss_hash_opts(struct be_adapter *adapter, u64 flow_type)
{
 u64 data = 0;

 switch (flow_type) {
 case 131:
  if (adapter->rss_flags & RSS_ENABLE_IPV4)
   data |= RXH_IP_DST | RXH_IP_SRC;
  if (adapter->rss_flags & RSS_ENABLE_TCP_IPV4)
   data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
  break;
 case 129:
  if (adapter->rss_flags & RSS_ENABLE_IPV4)
   data |= RXH_IP_DST | RXH_IP_SRC;
  if (adapter->rss_flags & RSS_ENABLE_UDP_IPV4)
   data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
  break;
 case 130:
  if (adapter->rss_flags & RSS_ENABLE_IPV6)
   data |= RXH_IP_DST | RXH_IP_SRC;
  if (adapter->rss_flags & RSS_ENABLE_TCP_IPV6)
   data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
  break;
 case 128:
  if (adapter->rss_flags & RSS_ENABLE_IPV6)
   data |= RXH_IP_DST | RXH_IP_SRC;
  if (adapter->rss_flags & RSS_ENABLE_UDP_IPV6)
   data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
  break;
 }

 return data;
}
