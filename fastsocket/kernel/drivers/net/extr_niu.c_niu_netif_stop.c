
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct niu {TYPE_1__* dev; } ;
struct TYPE_2__ {int trans_start; } ;


 int jiffies ;
 int netif_tx_disable (TYPE_1__*) ;
 int niu_disable_napi (struct niu*) ;

__attribute__((used)) static void niu_netif_stop(struct niu *np)
{
 np->dev->trans_start = jiffies;

 niu_disable_napi(np);

 netif_tx_disable(np->dev);
}
