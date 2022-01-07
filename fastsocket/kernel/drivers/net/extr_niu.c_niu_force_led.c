
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int flags; } ;


 int BMAC_XIF_CONFIG ;
 int BMAC_XIF_CONFIG_LINK_LED ;
 int NIU_FLAGS_XMAC ;
 int XMAC_CONFIG ;
 int XMAC_CONFIG_FORCE_LED_ON ;
 int nr64_mac (int ) ;
 int nw64_mac (int ,int ) ;

__attribute__((used)) static void niu_force_led(struct niu *np, int on)
{
 u64 val, reg, bit;

 if (np->flags & NIU_FLAGS_XMAC) {
  reg = XMAC_CONFIG;
  bit = XMAC_CONFIG_FORCE_LED_ON;
 } else {
  reg = BMAC_XIF_CONFIG;
  bit = BMAC_XIF_CONFIG_LINK_LED;
 }

 val = nr64_mac(reg);
 if (on)
  val |= bit;
 else
  val &= ~bit;
 nw64_mac(reg, val);
}
