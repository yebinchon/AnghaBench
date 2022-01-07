
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int flags; } ;


 int BMAC_XIF_CONFIG ;
 int NIU_FLAGS_XMAC ;
 int XMAC_CONFIG ;
 int nr64_mac (int ) ;

__attribute__((used)) static u64 niu_led_state_save(struct niu *np)
{
 if (np->flags & NIU_FLAGS_XMAC)
  return nr64_mac(XMAC_CONFIG);
 else
  return nr64_mac(BMAC_XIF_CONFIG);
}
