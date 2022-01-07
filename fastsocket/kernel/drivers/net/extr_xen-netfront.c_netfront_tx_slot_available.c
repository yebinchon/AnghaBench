
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int req_prod_pvt; int rsp_cons; } ;
struct netfront_info {TYPE_1__ tx; } ;


 int MAX_SKB_FRAGS ;
 int TX_MAX_TARGET ;

__attribute__((used)) static int netfront_tx_slot_available(struct netfront_info *np)
{
 return ((np->tx.req_prod_pvt - np->tx.rsp_cons) <
  (TX_MAX_TARGET - MAX_SKB_FRAGS - 2));
}
