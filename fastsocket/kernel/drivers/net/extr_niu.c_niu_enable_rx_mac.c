
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int flags; } ;


 int NIU_FLAGS_XMAC ;
 int niu_enable_rx_bmac (struct niu*,int) ;
 int niu_enable_rx_xmac (struct niu*,int) ;

__attribute__((used)) static void niu_enable_rx_mac(struct niu *np, int on)
{
 if (np->flags & NIU_FLAGS_XMAC)
  niu_enable_rx_xmac(np, on);
 else
  niu_enable_rx_bmac(np, on);
}
