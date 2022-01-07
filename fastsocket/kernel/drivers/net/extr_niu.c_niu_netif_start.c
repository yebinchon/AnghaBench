
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dev; } ;


 int netif_tx_wake_all_queues (int ) ;
 int niu_enable_interrupts (struct niu*,int) ;
 int niu_enable_napi (struct niu*) ;

__attribute__((used)) static void niu_netif_start(struct niu *np)
{




 netif_tx_wake_all_queues(np->dev);

 niu_enable_napi(np);

 niu_enable_interrupts(np, 1);
}
