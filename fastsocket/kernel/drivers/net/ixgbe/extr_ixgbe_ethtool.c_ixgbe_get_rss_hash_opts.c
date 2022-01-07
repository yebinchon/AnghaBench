
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int flags2; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;






 int EINVAL ;




 int IXGBE_FLAG2_RSS_FIELD_IPV4_UDP ;
 int IXGBE_FLAG2_RSS_FIELD_IPV6_UDP ;
 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;







__attribute__((used)) static int ixgbe_get_rss_hash_opts(struct ixgbe_adapter *adapter,
       struct ethtool_rxnfc *cmd)
{
 cmd->data = 0;


 switch (cmd->flow_type) {
 case 131:
  cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
 case 129:
  if (adapter->flags2 & IXGBE_FLAG2_RSS_FIELD_IPV4_UDP)
   cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
 case 133:
 case 141:
 case 139:
 case 137:
 case 135:
  cmd->data |= RXH_IP_SRC | RXH_IP_DST;
  break;
 case 130:
  cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
 case 128:
  if (adapter->flags2 & IXGBE_FLAG2_RSS_FIELD_IPV6_UDP)
   cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
 case 132:
 case 140:
 case 138:
 case 136:
 case 134:
  cmd->data |= RXH_IP_SRC | RXH_IP_DST;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
