
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int XMAC_CONFIG ;
 int XMAC_CONFIG_TX_ENABLE ;
 int nr64_mac (int ) ;
 int nw64_mac (int ,int ) ;

__attribute__((used)) static void niu_enable_tx_xmac(struct niu *np, int on)
{
 u64 val = nr64_mac(XMAC_CONFIG);

 if (on)
  val |= XMAC_CONFIG_TX_ENABLE;
 else
  val &= ~XMAC_CONFIG_TX_ENABLE;
 nw64_mac(XMAC_CONFIG, val);
}
