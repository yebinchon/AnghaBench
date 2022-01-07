
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; int flags2; TYPE_2__* ring_feature; int netdev; struct ixgbe_hw hw; } ;
struct TYPE_4__ {int indices; scalar_t__ mask; } ;


 int IXGBE_FLAG2_RSS_FIELD_IPV4_UDP ;
 int IXGBE_FLAG2_RSS_FIELD_IPV6_UDP ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 int IXGBE_MRQC ;
 int IXGBE_MRQC_RSSEN ;
 int IXGBE_MRQC_RSS_FIELD_IPV4 ;
 int IXGBE_MRQC_RSS_FIELD_IPV4_TCP ;
 int IXGBE_MRQC_RSS_FIELD_IPV4_UDP ;
 int IXGBE_MRQC_RSS_FIELD_IPV6 ;
 int IXGBE_MRQC_RSS_FIELD_IPV6_TCP ;
 int IXGBE_MRQC_RSS_FIELD_IPV6_UDP ;
 int IXGBE_MRQC_RTRSS4TCEN ;
 int IXGBE_MRQC_RTRSS8TCEN ;
 int IXGBE_MRQC_VMDQRSS32EN ;
 int IXGBE_MRQC_VMDQRSS64EN ;
 int IXGBE_MRQC_VMDQRT4TCEN ;
 int IXGBE_MRQC_VMDQRT8TCEN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RETA (int) ;
 int IXGBE_RSSRK (int) ;
 int IXGBE_RXCSUM ;
 int IXGBE_RXCSUM_PCSD ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int const) ;
 size_t RING_F_RSS ;
 scalar_t__ ixgbe_mac_82598EB ;
 int netdev_get_num_tc (int ) ;

__attribute__((used)) static void ixgbe_setup_mrqc(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 static const u32 seed[10] = { 0xE291D73D, 0x1805EC6C, 0x2A94B30D,
     0xA54F2BEC, 0xEA49AF7C, 0xE214AD3D, 0xB855AABE,
     0x6A3E67EA, 0x14364D17, 0x3BED200D};
 u32 mrqc = 0, reta = 0;
 u32 rxcsum;
 int i, j;
 u16 rss_i = adapter->ring_feature[RING_F_RSS].indices;






 if ((adapter->flags & IXGBE_FLAG_SRIOV_ENABLED) && (rss_i < 2))
  rss_i = 2;


 for (i = 0; i < 10; i++)
  IXGBE_WRITE_REG(hw, IXGBE_RSSRK(i), seed[i]);


 for (i = 0, j = 0; i < 128; i++, j++) {
  if (j == rss_i)
   j = 0;


  reta = (reta << 8) | (j * 0x11);
  if ((i & 3) == 3)
   IXGBE_WRITE_REG(hw, IXGBE_RETA(i >> 2), reta);
 }


 rxcsum = IXGBE_READ_REG(hw, IXGBE_RXCSUM);
 rxcsum |= IXGBE_RXCSUM_PCSD;
 IXGBE_WRITE_REG(hw, IXGBE_RXCSUM, rxcsum);

 if (adapter->hw.mac.type == ixgbe_mac_82598EB) {
  if (adapter->ring_feature[RING_F_RSS].mask)
   mrqc = IXGBE_MRQC_RSSEN;
 } else {
  u8 tcs = netdev_get_num_tc(adapter->netdev);

  if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED) {
   if (tcs > 4)
    mrqc = IXGBE_MRQC_VMDQRT8TCEN;
   else if (tcs > 1)
    mrqc = IXGBE_MRQC_VMDQRT4TCEN;
   else if (adapter->ring_feature[RING_F_RSS].indices == 4)
    mrqc = IXGBE_MRQC_VMDQRSS32EN;
   else
    mrqc = IXGBE_MRQC_VMDQRSS64EN;
  } else {
   if (tcs > 4)
    mrqc = IXGBE_MRQC_RTRSS8TCEN;
   else if (tcs > 1)
    mrqc = IXGBE_MRQC_RTRSS4TCEN;
   else
    mrqc = IXGBE_MRQC_RSSEN;
  }
 }


 mrqc |= IXGBE_MRQC_RSS_FIELD_IPV4 |
  IXGBE_MRQC_RSS_FIELD_IPV4_TCP |
  IXGBE_MRQC_RSS_FIELD_IPV6 |
  IXGBE_MRQC_RSS_FIELD_IPV6_TCP;

 if (adapter->flags2 & IXGBE_FLAG2_RSS_FIELD_IPV4_UDP)
  mrqc |= IXGBE_MRQC_RSS_FIELD_IPV4_UDP;
 if (adapter->flags2 & IXGBE_FLAG2_RSS_FIELD_IPV6_UDP)
  mrqc |= IXGBE_MRQC_RSS_FIELD_IPV6_UDP;

 IXGBE_WRITE_REG(hw, IXGBE_MRQC, mrqc);
}
