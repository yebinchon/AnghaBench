
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int flags; } ;


 int NIU_FLAGS_XMAC ;
 int niu_reset_tx_bmac (struct niu*) ;
 int niu_reset_tx_xmac (struct niu*) ;

__attribute__((used)) static int niu_reset_tx_mac(struct niu *np)
{
 if (np->flags & NIU_FLAGS_XMAC)
  return niu_reset_tx_xmac(np);
 else
  return niu_reset_tx_bmac(np);
}
