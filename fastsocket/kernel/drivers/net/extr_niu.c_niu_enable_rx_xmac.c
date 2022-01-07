
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int flags; } ;


 int NIU_FLAGS_MCAST ;
 int NIU_FLAGS_PROMISC ;
 int XMAC_CONFIG ;
 int XMAC_CONFIG_HASH_FILTER_EN ;
 int XMAC_CONFIG_PROMISCUOUS ;
 int XMAC_CONFIG_RX_MAC_ENABLE ;
 int nr64_mac (int ) ;
 int nw64_mac (int ,int) ;

__attribute__((used)) static void niu_enable_rx_xmac(struct niu *np, int on)
{
 u64 val = nr64_mac(XMAC_CONFIG);

 val &= ~(XMAC_CONFIG_HASH_FILTER_EN |
   XMAC_CONFIG_PROMISCUOUS);

 if (np->flags & NIU_FLAGS_MCAST)
  val |= XMAC_CONFIG_HASH_FILTER_EN;
 if (np->flags & NIU_FLAGS_PROMISC)
  val |= XMAC_CONFIG_PROMISCUOUS;

 if (on)
  val |= XMAC_CONFIG_RX_MAC_ENABLE;
 else
  val &= ~XMAC_CONFIG_RX_MAC_ENABLE;
 nw64_mac(XMAC_CONFIG, val);
}
