
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct niu {int flags; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int NIU_FLAGS_XMAC ;
 int niu_init_rx_bmac (struct niu*) ;
 int niu_init_rx_xmac (struct niu*) ;
 int niu_set_primary_mac (struct niu*,int ) ;

__attribute__((used)) static void niu_init_rx_mac(struct niu *np)
{
 niu_set_primary_mac(np, np->dev->dev_addr);

 if (np->flags & NIU_FLAGS_XMAC)
  niu_init_rx_xmac(np);
 else
  niu_init_rx_bmac(np);
}
