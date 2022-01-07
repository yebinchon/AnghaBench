
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int BTXMAC_CONFIG ;
 int BTXMAC_CONFIG_ENABLE ;
 int nr64_mac (int ) ;
 int nw64_mac (int ,int ) ;

__attribute__((used)) static void niu_enable_tx_bmac(struct niu *np, int on)
{
 u64 val = nr64_mac(BTXMAC_CONFIG);

 if (on)
  val |= BTXMAC_CONFIG_ENABLE;
 else
  val &= ~BTXMAC_CONFIG_ENABLE;
 nw64_mac(BTXMAC_CONFIG, val);
}
