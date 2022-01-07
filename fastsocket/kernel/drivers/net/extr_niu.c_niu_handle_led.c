
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int flags; } ;


 int NIU_FLAGS_10G ;
 int NIU_FLAGS_FIBER ;
 int XMAC_CONFIG ;
 int XMAC_CONFIG_FORCE_LED_ON ;
 int XMAC_CONFIG_LED_POLARITY ;
 int nr64_mac (int ) ;
 int nw64_mac (int ,int ) ;

__attribute__((used)) static void niu_handle_led(struct niu *np, int status)
{
 u64 val;
 val = nr64_mac(XMAC_CONFIG);

 if ((np->flags & NIU_FLAGS_10G) != 0 &&
     (np->flags & NIU_FLAGS_FIBER) != 0) {
  if (status) {
   val |= XMAC_CONFIG_LED_POLARITY;
   val &= ~XMAC_CONFIG_FORCE_LED_ON;
  } else {
   val |= XMAC_CONFIG_FORCE_LED_ON;
   val &= ~XMAC_CONFIG_LED_POLARITY;
  }
 }

 nw64_mac(XMAC_CONFIG, val);
}
